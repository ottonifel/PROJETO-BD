--CREATE FUNCTION valida_CPF() RETURNS TRIGGER AS $$
--DECLARE
--  temp_cpf CHAR(11);
--BEGIN
--  temp_cpf := NEW.cpf;
--  temp_cpf := REGEXP_REPLACE(temp_cpf, '[^0-9]', '', 'g');
--  IF LENGTH(temp_cpf) <> 11 THEN
--    RAISE EXCEPTION 'O CPF deve conter apenas números';
--  END IF;
--  NEW.cpf := temp_cpf;
--  RETURN NEW;
--END;
--$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION valida_CPF() RETURNS TRIGGER AS $$
DECLARE
  temp_cpf CHAR(11);
  i INTEGER;
BEGIN
  temp_cpf := NEW.cpf;
  FOR i IN 1..LENGTH(temp_cpf) LOOP
    IF ascii(SUBSTR(temp_cpf, i, 1)) < ascii('0') OR ascii(SUBSTR(temp_cpf, i, 1)) > ascii('9') THEN
      RAISE EXCEPTION 'O CPF deve apenas conter números';
    END IF;
  END LOOP;
  NEW.cpf := temp_cpf;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER valida_CPF_cliente
BEFORE INSERT ON cliente
FOR EACH ROW
EXECUTE FUNCTION valida_CPF();

CREATE TRIGGER valida_CPF_caixa
BEFORE INSERT ON caixa
FOR EACH ROW
EXECUTE FUNCTION valida_CPF();

CREATE TRIGGER valida_CPF_funcionario
BEFORE INSERT ON funcionario
FOR EACH ROW
EXECUTE FUNCTION valida_CPF();

---------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION verifica_gerenciamento()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.CPF_supervisor = NEW.CPF THEN
    RAISE EXCEPTION 'O CPF do supervisor não pode ser o mesmo que o CPF do caixa';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verifica_gerenciamento_trigger
BEFORE INSERT OR UPDATE ON caixa
FOR EACH ROW
EXECUTE FUNCTION verifica_gerenciamento();

-----------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION verifica_data_compra() RETURNS TRIGGER AS $$
BEGIN
    IF NEW.data_compra < NOW() THEN
        RAISE EXCEPTION 'A data da compra não pode ser menor que a data atual.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verifica_data_compra_trigger
    BEFORE INSERT OR UPDATE ON venda
    FOR EACH ROW
    EXECUTE FUNCTION verifica_data_compra();
	
	
---------------------------------------------------------------------------------------
CREATE FUNCTION valida_idade_funcionario() RETURNS TRIGGER AS $$
BEGIN
  IF EXTRACT(YEAR FROM AGE(NEW.data_nascimento)) < 18 THEN
    RAISE EXCEPTION 'O funcionário deve ter pelo menos 18 anos de idade';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER valida_idade_funcionario_trigger
BEFORE INSERT ON funcionario
FOR EACH ROW
EXECUTE FUNCTION valida_idade_funcionario();



