--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: gdsn_dev; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA gdsn_dev;


--
-- Name: NonBinaryLogicEnumeration; Type: TYPE; Schema: gdsn_dev; Owner: -
--

CREATE TYPE gdsn_dev."NonBinaryLogicEnumeration" AS ENUM (
    'UNSPECIFIED',
    'NOT_APPLICABLE',
    'TRUE',
    'FALSE'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _CataloguePrice; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_CataloguePrice" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _Certification; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_Certification" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _CertificationInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_CertificationInformation" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ChildTradeItem; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ChildTradeItem" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _Colour; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_Colour" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ComponentInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ComponentInformation" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ConsumerWarningInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ConsumerWarningInformation" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _DataCarrier; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_DataCarrier" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _DutyFeeTax; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_DutyFeeTax" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _DutyFeeTaxInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_DutyFeeTaxInformation" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ImportClassification; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ImportClassification" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _IndividualPackagingComponentLevel; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_IndividualPackagingComponentLevel" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ManufacturerOfTradeItem; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ManufacturerOfTradeItem" (
    "A" integer NOT NULL,
    "B" text NOT NULL
);


--
-- Name: _Material; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_Material" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _MaterialComposition; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_MaterialComposition" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _Packaging; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_Packaging" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _PackagingMaterial; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_PackagingMaterial" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ProductCharacteristics; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ProductCharacteristics" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ReferencedFileInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ReferencedFileInformation" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _ReferencedTradeItem; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_ReferencedTradeItem" (
    "A" integer NOT NULL,
    "B" text NOT NULL
);


--
-- Name: _RegulatoryInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_RegulatoryInformation" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: _TargetMarket; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_TargetMarket" (
    "A" integer NOT NULL,
    "B" text NOT NULL
);


--
-- Name: _TradeItemContactInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_TradeItemContactInformation" (
    "A" integer NOT NULL,
    "B" text NOT NULL
);


--
-- Name: _TradeItemInformation; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_TradeItemInformation" (
    "A" integer NOT NULL,
    "B" text NOT NULL
);


--
-- Name: _TradeItemStacking; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev."_TradeItemStacking" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


--
-- Name: brand_name_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.brand_name_information_type (
    id integer NOT NULL,
    brand_name text NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone,
    sub_brand text
);


--
-- Name: brand_name_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.brand_name_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: brand_name_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.brand_name_information_type_id_seq OWNED BY gdsn_dev.brand_name_information_type.id;


--
-- Name: certification_information_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.certification_information_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: certification_information_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.certification_information_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: certification_information_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.certification_information_module_type_id_seq OWNED BY gdsn_dev.certification_information_module_type.id;


--
-- Name: certification_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.certification_information_type (
    id integer NOT NULL,
    certification_agency text,
    certification_standard text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone,
    is_certificate_required gdsn_dev."NonBinaryLogicEnumeration"
);


--
-- Name: certification_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.certification_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: certification_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.certification_information_type_id_seq OWNED BY gdsn_dev.certification_information_type.id;


--
-- Name: certification_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.certification_type (
    id integer NOT NULL,
    certification_value text NOT NULL,
    certificate_issuance_date_time text,
    certification_effective_end_date_time text,
    certification_effective_start_date_time text,
    certification_identification text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: certification_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.certification_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: certification_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.certification_type_id_seq OWNED BY gdsn_dev.certification_type.id;


--
-- Name: child_trade_item_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.child_trade_item_type (
    id integer NOT NULL,
    gtin text NOT NULL,
    quantity_of_next_lower_level_trade_item integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: child_trade_item_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.child_trade_item_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: child_trade_item_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.child_trade_item_type_id_seq OWNED BY gdsn_dev.child_trade_item_type.id;


--
-- Name: colour_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.colour_type (
    id integer NOT NULL,
    colour_code jsonb,
    colour_family_code jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: colour_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.colour_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: colour_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.colour_type_id_seq OWNED BY gdsn_dev.colour_type.id;


--
-- Name: component_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.component_information_type (
    id integer NOT NULL,
    component_number integer NOT NULL,
    component_identification jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: component_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.component_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: component_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.component_information_type_id_seq OWNED BY gdsn_dev.component_information_type.id;


--
-- Name: consumer_instructions_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.consumer_instructions_module_type (
    id integer NOT NULL,
    consumer_instructions_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: consumer_instructions_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.consumer_instructions_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: consumer_instructions_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.consumer_instructions_module_type_id_seq OWNED BY gdsn_dev.consumer_instructions_module_type.id;


--
-- Name: consumer_instructions_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.consumer_instructions_type (
    id integer NOT NULL,
    consumer_storage_instructions jsonb[],
    consumer_usage_instructions jsonb[],
    consumer_assembly_instructions jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: consumer_instructions_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.consumer_instructions_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: consumer_instructions_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.consumer_instructions_type_id_seq OWNED BY gdsn_dev.consumer_instructions_type.id;


--
-- Name: consumer_warning_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.consumer_warning_information_type (
    id integer NOT NULL,
    consumer_warning_description jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: consumer_warning_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.consumer_warning_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: consumer_warning_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.consumer_warning_information_type_id_seq OWNED BY gdsn_dev.consumer_warning_information_type.id;


--
-- Name: data_carrier_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.data_carrier_type (
    id integer NOT NULL,
    application_identifier_type_code jsonb[],
    data_carrier_family_type_code jsonb,
    data_carrier_type_code jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: data_carrier_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.data_carrier_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_carrier_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.data_carrier_type_id_seq OWNED BY gdsn_dev.data_carrier_type.id;


--
-- Name: delivery_purchasing_information_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.delivery_purchasing_information_module_type (
    id integer NOT NULL,
    deli_purc_info_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: delivery_purchasing_information_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.delivery_purchasing_information_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: delivery_purchasing_information_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.delivery_purchasing_information_module_type_id_seq OWNED BY gdsn_dev.delivery_purchasing_information_module_type.id;


--
-- Name: delivery_purchasing_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.delivery_purchasing_information_type (
    id integer NOT NULL,
    consumer_first_availability_date_time text,
    order_quantity_minimum integer,
    start_availability_date_time text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: delivery_purchasing_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.delivery_purchasing_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: delivery_purchasing_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.delivery_purchasing_information_type_id_seq OWNED BY gdsn_dev.delivery_purchasing_information_type.id;


--
-- Name: durable_goods_characteristics_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.durable_goods_characteristics_module_type (
    id integer NOT NULL,
    dura_good_char_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: durable_goods_characteristics_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.durable_goods_characteristics_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: durable_goods_characteristics_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.durable_goods_characteristics_module_type_id_seq OWNED BY gdsn_dev.durable_goods_characteristics_module_type.id;


--
-- Name: durable_goods_characteristics_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.durable_goods_characteristics_type (
    id integer NOT NULL,
    is_assembly_required boolean,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: durable_goods_characteristics_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.durable_goods_characteristics_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: durable_goods_characteristics_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.durable_goods_characteristics_type_id_seq OWNED BY gdsn_dev.durable_goods_characteristics_type.id;


--
-- Name: duty_fee_tax_information_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.duty_fee_tax_information_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: duty_fee_tax_information_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.duty_fee_tax_information_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: duty_fee_tax_information_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.duty_fee_tax_information_module_type_id_seq OWNED BY gdsn_dev.duty_fee_tax_information_module_type.id;


--
-- Name: duty_fee_tax_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.duty_fee_tax_information_type (
    id integer NOT NULL,
    duty_fee_tax_type_code text NOT NULL,
    duty_fee_tax_agency_code jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: duty_fee_tax_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.duty_fee_tax_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: duty_fee_tax_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.duty_fee_tax_information_type_id_seq OWNED BY gdsn_dev.duty_fee_tax_information_type.id;


--
-- Name: duty_fee_tax_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.duty_fee_tax_type (
    id integer NOT NULL,
    duty_fee_tax_rate integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: duty_fee_tax_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.duty_fee_tax_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: duty_fee_tax_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.duty_fee_tax_type_id_seq OWNED BY gdsn_dev.duty_fee_tax_type.id;


--
-- Name: extension_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.extension_type (
    id integer NOT NULL,
    cert_info_modu_id integer,
    mark_info_modu_id integer,
    pack_info_modu_id integer,
    packaging_marking_module_id integer,
    trad_item_desc_modu_id integer,
    trade_item_handling_module_id integer,
    dura_good_char_modu_id integer,
    sustainability_module_id integer,
    duty_fee_tax_info_modu_id integer,
    trad_item_data_carr_and_iden_modu_id integer,
    trad_item_meas_modu_id integer,
    vari_trad_item_info_modu_id integer,
    trad_item_hier_modu_id integer,
    plac_of_item_acti_modu_id integer,
    material_module_id integer,
    pack_sust_modu_id integer,
    deli_purc_info_modu_id integer,
    cons_inst_modu_id integer,
    prod_char_modu_id integer,
    regu_trad_item_modu_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone,
    sales_information_module_id integer
);


--
-- Name: extension_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.extension_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: extension_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.extension_type_id_seq OWNED BY gdsn_dev.extension_type.id;


--
-- Name: gdsn_trade_item_classification_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.gdsn_trade_item_classification_type (
    id integer NOT NULL,
    gpc_category_code text NOT NULL,
    gpc_category_name text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: gdsn_trade_item_classification_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.gdsn_trade_item_classification_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gdsn_trade_item_classification_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.gdsn_trade_item_classification_type_id_seq OWNED BY gdsn_dev.gdsn_trade_item_classification_type.id;


--
-- Name: import_classification_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.import_classification_type (
    id integer NOT NULL,
    import_classification_type_code jsonb,
    import_classification_value text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: import_classification_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.import_classification_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: import_classification_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.import_classification_type_id_seq OWNED BY gdsn_dev.import_classification_type.id;


--
-- Name: individual_packaging_component_level_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.individual_packaging_component_level_type (
    id integer NOT NULL,
    packaging_material_description jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: individual_packaging_component_level_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.individual_packaging_component_level_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_packaging_component_level_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.individual_packaging_component_level_type_id_seq OWNED BY gdsn_dev.individual_packaging_component_level_type.id;


--
-- Name: marketing_information_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.marketing_information_module_type (
    id integer NOT NULL,
    marketing_information_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: marketing_information_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.marketing_information_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: marketing_information_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.marketing_information_module_type_id_seq OWNED BY gdsn_dev.marketing_information_module_type.id;


--
-- Name: marketing_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.marketing_information_type (
    id integer NOT NULL,
    trade_item_feature_benefit jsonb[],
    trade_item_feature_code_reference jsonb[],
    trade_item_marketing_message jsonb[],
    designer jsonb[],
    short_trade_item_marketing_message jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: marketing_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.marketing_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: marketing_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.marketing_information_type_id_seq OWNED BY gdsn_dev.marketing_information_type.id;


--
-- Name: material_composition_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.material_composition_type (
    id integer NOT NULL,
    material_content jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: material_composition_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.material_composition_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: material_composition_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.material_composition_type_id_seq OWNED BY gdsn_dev.material_composition_type.id;


--
-- Name: material_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.material_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: material_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.material_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: material_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.material_module_type_id_seq OWNED BY gdsn_dev.material_module_type.id;


--
-- Name: material_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.material_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: material_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.material_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: material_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.material_type_id_seq OWNED BY gdsn_dev.material_type.id;


--
-- Name: next_lower_level_trade_item_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.next_lower_level_trade_item_information_type (
    id integer NOT NULL,
    quantity_of_children integer NOT NULL,
    total_quantity_of_next_lower_level_trade_item integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: next_lower_level_trade_item_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.next_lower_level_trade_item_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: next_lower_level_trade_item_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.next_lower_level_trade_item_information_type_id_seq OWNED BY gdsn_dev.next_lower_level_trade_item_information_type.id;


--
-- Name: packaging_dimension_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.packaging_dimension_type (
    id integer NOT NULL,
    packaging_depth jsonb,
    packaging_height jsonb,
    packaging_width jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: packaging_dimension_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.packaging_dimension_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packaging_dimension_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.packaging_dimension_type_id_seq OWNED BY gdsn_dev.packaging_dimension_type.id;


--
-- Name: packaging_information_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.packaging_information_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: packaging_information_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.packaging_information_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packaging_information_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.packaging_information_module_type_id_seq OWNED BY gdsn_dev.packaging_information_module_type.id;


--
-- Name: packaging_marking_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.packaging_marking_module_type (
    id integer NOT NULL,
    packaging_marking_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: packaging_marking_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.packaging_marking_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packaging_marking_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.packaging_marking_module_type_id_seq OWNED BY gdsn_dev.packaging_marking_module_type.id;


--
-- Name: packaging_marking_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.packaging_marking_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: packaging_marking_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.packaging_marking_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packaging_marking_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.packaging_marking_type_id_seq OWNED BY gdsn_dev.packaging_marking_type.id;


--
-- Name: packaging_material_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.packaging_material_type (
    id integer NOT NULL,
    packaging_material_type_code jsonb NOT NULL,
    packaging_material_composition_quantity jsonb[],
    packaging_labelling_type_code jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: packaging_material_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.packaging_material_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packaging_material_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.packaging_material_type_id_seq OWNED BY gdsn_dev.packaging_material_type.id;


--
-- Name: packaging_sustainability_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.packaging_sustainability_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: packaging_sustainability_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.packaging_sustainability_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packaging_sustainability_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.packaging_sustainability_module_type_id_seq OWNED BY gdsn_dev.packaging_sustainability_module_type.id;


--
-- Name: packaging_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.packaging_type (
    id integer NOT NULL,
    packaging_feature_code jsonb[],
    packaging_function_code jsonb[],
    packaging_type_code jsonb,
    packaging_weight jsonb,
    platform_type_code jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone,
    packaging_dimension_id integer
);


--
-- Name: packaging_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.packaging_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: packaging_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.packaging_type_id_seq OWNED BY gdsn_dev.packaging_type.id;


--
-- Name: party_in_role_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.party_in_role_type (
    id integer NOT NULL,
    gln text,
    party_address text,
    party_name text,
    party_role_code jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: party_in_role_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.party_in_role_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: party_in_role_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.party_in_role_type_id_seq OWNED BY gdsn_dev.party_in_role_type.id;


--
-- Name: place_of_item_activity_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.place_of_item_activity_module_type (
    id integer NOT NULL,
    place_of_product_activity_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: place_of_item_activity_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.place_of_item_activity_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: place_of_item_activity_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.place_of_item_activity_module_type_id_seq OWNED BY gdsn_dev.place_of_item_activity_module_type.id;


--
-- Name: place_of_product_activity_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.place_of_product_activity_type (
    id integer NOT NULL,
    country_of_origin_statement jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: place_of_product_activity_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.place_of_product_activity_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: place_of_product_activity_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.place_of_product_activity_type_id_seq OWNED BY gdsn_dev.place_of_product_activity_type.id;


--
-- Name: product_characteristics_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.product_characteristics_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: product_characteristics_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.product_characteristics_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: product_characteristics_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.product_characteristics_module_type_id_seq OWNED BY gdsn_dev.product_characteristics_module_type.id;


--
-- Name: product_characteristics_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.product_characteristics_type (
    id integer NOT NULL,
    product_characteristic_code jsonb NOT NULL,
    product_characteristic_value_measurement jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: product_characteristics_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.product_characteristics_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: product_characteristics_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.product_characteristics_type_id_seq OWNED BY gdsn_dev.product_characteristics_type.id;


--
-- Name: referenced_file_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.referenced_file_information_type (
    id integer NOT NULL,
    referenced_file_type_code jsonb NOT NULL,
    content_description jsonb[],
    file_format_name text,
    file_version text,
    uniform_resource_identifier text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: referenced_file_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.referenced_file_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: referenced_file_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.referenced_file_information_type_id_seq OWNED BY gdsn_dev.referenced_file_information_type.id;


--
-- Name: referenced_trade_item_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.referenced_trade_item_type (
    id integer NOT NULL,
    gtin text NOT NULL,
    referenced_trade_item_type_code jsonb NOT NULL,
    additional_trade_item_identification jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: referenced_trade_item_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.referenced_trade_item_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: referenced_trade_item_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.referenced_trade_item_type_id_seq OWNED BY gdsn_dev.referenced_trade_item_type.id;


--
-- Name: regulated_trade_item_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.regulated_trade_item_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: regulated_trade_item_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.regulated_trade_item_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: regulated_trade_item_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.regulated_trade_item_module_type_id_seq OWNED BY gdsn_dev.regulated_trade_item_module_type.id;


--
-- Name: regulatory_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.regulatory_information_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone,
    is_trade_item_regulation_compliant gdsn_dev."NonBinaryLogicEnumeration"
);


--
-- Name: regulatory_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.regulatory_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: regulatory_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.regulatory_information_type_id_seq OWNED BY gdsn_dev.regulatory_information_type.id;


--
-- Name: sales_information_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.sales_information_module_type (
    id integer NOT NULL,
    trad_item_pric_info_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: sales_information_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.sales_information_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sales_information_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.sales_information_module_type_id_seq OWNED BY gdsn_dev.sales_information_module_type.id;


--
-- Name: sustainability_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.sustainability_information_type (
    id integer NOT NULL,
    post_consumer_recycled_content_percentage integer,
    total_recyclable_content_percentage integer,
    trade_item_sustainability_feature_code jsonb[],
    trade_item_sustainability_statement jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: sustainability_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.sustainability_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sustainability_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.sustainability_information_type_id_seq OWNED BY gdsn_dev.sustainability_information_type.id;


--
-- Name: sustainability_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.sustainability_module_type (
    id integer NOT NULL,
    sust_info_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: sustainability_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.sustainability_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sustainability_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.sustainability_module_type_id_seq OWNED BY gdsn_dev.sustainability_module_type.id;


--
-- Name: target_market_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.target_market_type (
    id integer NOT NULL,
    target_market_country_code jsonb NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: target_market_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.target_market_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: target_market_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.target_market_type_id_seq OWNED BY gdsn_dev.target_market_type.id;


--
-- Name: trade_item_components_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_components_type (
    id integer NOT NULL,
    number_of_pieces_in_set integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone,
    total_number_of_components integer
);


--
-- Name: trade_item_components_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_components_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_components_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_components_type_id_seq OWNED BY gdsn_dev.trade_item_components_type.id;


--
-- Name: trade_item_contact_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_contact_information_type (
    id integer NOT NULL,
    contact_type_code jsonb NOT NULL,
    contact_address text,
    contact_name text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_contact_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_contact_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_contact_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_contact_information_type_id_seq OWNED BY gdsn_dev.trade_item_contact_information_type.id;


--
-- Name: trade_item_data_carrier_and_identification_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_data_carrier_and_identification_module_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_data_carrier_and_identification_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_data_carrier_and_identification_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_data_carrier_and_identification_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_data_carrier_and_identification_module_type_id_seq OWNED BY gdsn_dev.trade_item_data_carrier_and_identification_module_type.id;


--
-- Name: trade_item_description_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_description_information_type (
    id integer NOT NULL,
    description_short jsonb[],
    functional_name jsonb[],
    label_description jsonb[],
    variant_description jsonb[],
    brand_name_information_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_description_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_description_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_description_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_description_information_type_id_seq OWNED BY gdsn_dev.trade_item_description_information_type.id;


--
-- Name: trade_item_description_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_description_module_type (
    id integer NOT NULL,
    trad_item_desc_info_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_description_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_description_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_description_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_description_module_type_id_seq OWNED BY gdsn_dev.trade_item_description_module_type.id;


--
-- Name: trade_item_handling_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_handling_information_type (
    id integer NOT NULL,
    handling_instructions_description jsonb[],
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_handling_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_handling_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_handling_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_handling_information_type_id_seq OWNED BY gdsn_dev.trade_item_handling_information_type.id;


--
-- Name: trade_item_handling_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_handling_module_type (
    id integer NOT NULL,
    trad_item_hand_info_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_handling_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_handling_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_handling_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_handling_module_type_id_seq OWNED BY gdsn_dev.trade_item_handling_module_type.id;


--
-- Name: trade_item_hierarchy_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_hierarchy_module_type (
    id integer NOT NULL,
    trade_item_hierarchy_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_hierarchy_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_hierarchy_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_hierarchy_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_hierarchy_module_type_id_seq OWNED BY gdsn_dev.trade_item_hierarchy_module_type.id;


--
-- Name: trade_item_hierarchy_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_hierarchy_type (
    id integer NOT NULL,
    quantity_of_complete_layers_contained_in_a_trade_item integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_hierarchy_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_hierarchy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_hierarchy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_hierarchy_type_id_seq OWNED BY gdsn_dev.trade_item_hierarchy_type.id;


--
-- Name: trade_item_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_information_type (
    id integer NOT NULL,
    trade_item_components_id integer,
    extension_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_information_type_id_seq OWNED BY gdsn_dev.trade_item_information_type.id;


--
-- Name: trade_item_measurements_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_measurements_module_type (
    id integer NOT NULL,
    trade_item_measurements_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_measurements_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_measurements_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_measurements_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_measurements_module_type_id_seq OWNED BY gdsn_dev.trade_item_measurements_module_type.id;


--
-- Name: trade_item_measurements_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_measurements_type (
    id integer NOT NULL,
    depth jsonb,
    height jsonb,
    net_content jsonb[],
    width jsonb,
    net_content_statement jsonb[],
    trade_item_weight jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_measurements_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_measurements_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_measurements_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_measurements_type_id_seq OWNED BY gdsn_dev.trade_item_measurements_type.id;


--
-- Name: trade_item_price_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_price_information_type (
    id integer NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_price_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_price_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_price_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_price_information_type_id_seq OWNED BY gdsn_dev.trade_item_price_information_type.id;


--
-- Name: trade_item_price_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_price_type (
    id integer NOT NULL,
    trade_item_price jsonb NOT NULL,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_price_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_price_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_price_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_price_type_id_seq OWNED BY gdsn_dev.trade_item_price_type.id;


--
-- Name: trade_item_stacking_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_stacking_type (
    id integer NOT NULL,
    stacking_factor integer,
    stacking_factor_type_code jsonb,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_stacking_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_stacking_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_stacking_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_stacking_type_id_seq OWNED BY gdsn_dev.trade_item_stacking_type.id;


--
-- Name: trade_item_synchronisation_dates_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_synchronisation_dates_type (
    id integer NOT NULL,
    last_change_date_time text NOT NULL,
    effective_date_time text,
    publication_date_time text,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: trade_item_synchronisation_dates_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.trade_item_synchronisation_dates_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trade_item_synchronisation_dates_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.trade_item_synchronisation_dates_type_id_seq OWNED BY gdsn_dev.trade_item_synchronisation_dates_type.id;


--
-- Name: trade_item_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.trade_item_type (
    gtin text NOT NULL,
    is_trade_item_a_base_unit boolean,
    is_trade_item_a_consumer_unit boolean,
    is_trade_item_a_despatch_unit boolean,
    is_trade_item_an_invoice_unit boolean,
    is_trade_item_an_orderable_unit boolean,
    trade_item_unit_descriptor_code jsonb,
    info_prov_of_trad_item_id integer NOT NULL,
    brand_owner_id integer,
    gdsn_trad_item_clas_id integer NOT NULL,
    trad_item_sync_date_id integer NOT NULL,
    next_lowe_leve_trad_item_info_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone,
    additional_trade_item_identification jsonb[]
);


--
-- Name: variable_trade_item_information_module_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.variable_trade_item_information_module_type (
    id integer NOT NULL,
    vari_trad_item_info_id integer,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: variable_trade_item_information_module_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.variable_trade_item_information_module_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variable_trade_item_information_module_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.variable_trade_item_information_module_type_id_seq OWNED BY gdsn_dev.variable_trade_item_information_module_type.id;


--
-- Name: variable_trade_item_information_type; Type: TABLE; Schema: gdsn_dev; Owner: -
--

CREATE TABLE gdsn_dev.variable_trade_item_information_type (
    id integer NOT NULL,
    is_trade_item_a_variable_unit boolean,
    reg_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    upd_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    del_date timestamp(3) without time zone
);


--
-- Name: variable_trade_item_information_type_id_seq; Type: SEQUENCE; Schema: gdsn_dev; Owner: -
--

CREATE SEQUENCE gdsn_dev.variable_trade_item_information_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: variable_trade_item_information_type_id_seq; Type: SEQUENCE OWNED BY; Schema: gdsn_dev; Owner: -
--

ALTER SEQUENCE gdsn_dev.variable_trade_item_information_type_id_seq OWNED BY gdsn_dev.variable_trade_item_information_type.id;


--
-- Name: brand_name_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.brand_name_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.brand_name_information_type_id_seq'::regclass);


--
-- Name: certification_information_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.certification_information_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.certification_information_module_type_id_seq'::regclass);


--
-- Name: certification_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.certification_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.certification_information_type_id_seq'::regclass);


--
-- Name: certification_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.certification_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.certification_type_id_seq'::regclass);


--
-- Name: child_trade_item_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.child_trade_item_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.child_trade_item_type_id_seq'::regclass);


--
-- Name: colour_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.colour_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.colour_type_id_seq'::regclass);


--
-- Name: component_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.component_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.component_information_type_id_seq'::regclass);


--
-- Name: consumer_instructions_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.consumer_instructions_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.consumer_instructions_module_type_id_seq'::regclass);


--
-- Name: consumer_instructions_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.consumer_instructions_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.consumer_instructions_type_id_seq'::regclass);


--
-- Name: consumer_warning_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.consumer_warning_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.consumer_warning_information_type_id_seq'::regclass);


--
-- Name: data_carrier_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.data_carrier_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.data_carrier_type_id_seq'::regclass);


--
-- Name: delivery_purchasing_information_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.delivery_purchasing_information_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.delivery_purchasing_information_module_type_id_seq'::regclass);


--
-- Name: delivery_purchasing_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.delivery_purchasing_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.delivery_purchasing_information_type_id_seq'::regclass);


--
-- Name: durable_goods_characteristics_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.durable_goods_characteristics_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.durable_goods_characteristics_module_type_id_seq'::regclass);


--
-- Name: durable_goods_characteristics_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.durable_goods_characteristics_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.durable_goods_characteristics_type_id_seq'::regclass);


--
-- Name: duty_fee_tax_information_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.duty_fee_tax_information_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.duty_fee_tax_information_module_type_id_seq'::regclass);


--
-- Name: duty_fee_tax_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.duty_fee_tax_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.duty_fee_tax_information_type_id_seq'::regclass);


--
-- Name: duty_fee_tax_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.duty_fee_tax_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.duty_fee_tax_type_id_seq'::regclass);


--
-- Name: extension_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.extension_type_id_seq'::regclass);


--
-- Name: gdsn_trade_item_classification_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.gdsn_trade_item_classification_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.gdsn_trade_item_classification_type_id_seq'::regclass);


--
-- Name: import_classification_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.import_classification_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.import_classification_type_id_seq'::regclass);


--
-- Name: individual_packaging_component_level_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.individual_packaging_component_level_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.individual_packaging_component_level_type_id_seq'::regclass);


--
-- Name: marketing_information_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.marketing_information_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.marketing_information_module_type_id_seq'::regclass);


--
-- Name: marketing_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.marketing_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.marketing_information_type_id_seq'::regclass);


--
-- Name: material_composition_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.material_composition_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.material_composition_type_id_seq'::regclass);


--
-- Name: material_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.material_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.material_module_type_id_seq'::regclass);


--
-- Name: material_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.material_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.material_type_id_seq'::regclass);


--
-- Name: next_lower_level_trade_item_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.next_lower_level_trade_item_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.next_lower_level_trade_item_information_type_id_seq'::regclass);


--
-- Name: packaging_dimension_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_dimension_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.packaging_dimension_type_id_seq'::regclass);


--
-- Name: packaging_information_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_information_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.packaging_information_module_type_id_seq'::regclass);


--
-- Name: packaging_marking_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_marking_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.packaging_marking_module_type_id_seq'::regclass);


--
-- Name: packaging_marking_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_marking_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.packaging_marking_type_id_seq'::regclass);


--
-- Name: packaging_material_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_material_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.packaging_material_type_id_seq'::regclass);


--
-- Name: packaging_sustainability_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_sustainability_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.packaging_sustainability_module_type_id_seq'::regclass);


--
-- Name: packaging_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.packaging_type_id_seq'::regclass);


--
-- Name: party_in_role_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.party_in_role_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.party_in_role_type_id_seq'::regclass);


--
-- Name: place_of_item_activity_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.place_of_item_activity_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.place_of_item_activity_module_type_id_seq'::regclass);


--
-- Name: place_of_product_activity_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.place_of_product_activity_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.place_of_product_activity_type_id_seq'::regclass);


--
-- Name: product_characteristics_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.product_characteristics_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.product_characteristics_module_type_id_seq'::regclass);


--
-- Name: product_characteristics_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.product_characteristics_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.product_characteristics_type_id_seq'::regclass);


--
-- Name: referenced_file_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.referenced_file_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.referenced_file_information_type_id_seq'::regclass);


--
-- Name: referenced_trade_item_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.referenced_trade_item_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.referenced_trade_item_type_id_seq'::regclass);


--
-- Name: regulated_trade_item_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.regulated_trade_item_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.regulated_trade_item_module_type_id_seq'::regclass);


--
-- Name: regulatory_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.regulatory_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.regulatory_information_type_id_seq'::regclass);


--
-- Name: sales_information_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sales_information_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.sales_information_module_type_id_seq'::regclass);


--
-- Name: sustainability_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sustainability_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.sustainability_information_type_id_seq'::regclass);


--
-- Name: sustainability_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sustainability_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.sustainability_module_type_id_seq'::regclass);


--
-- Name: target_market_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.target_market_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.target_market_type_id_seq'::regclass);


--
-- Name: trade_item_components_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_components_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_components_type_id_seq'::regclass);


--
-- Name: trade_item_contact_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_contact_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_contact_information_type_id_seq'::regclass);


--
-- Name: trade_item_data_carrier_and_identification_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_data_carrier_and_identification_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_data_carrier_and_identification_module_type_id_seq'::regclass);


--
-- Name: trade_item_description_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_description_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_description_information_type_id_seq'::regclass);


--
-- Name: trade_item_description_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_description_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_description_module_type_id_seq'::regclass);


--
-- Name: trade_item_handling_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_handling_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_handling_information_type_id_seq'::regclass);


--
-- Name: trade_item_handling_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_handling_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_handling_module_type_id_seq'::regclass);


--
-- Name: trade_item_hierarchy_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_hierarchy_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_hierarchy_module_type_id_seq'::regclass);


--
-- Name: trade_item_hierarchy_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_hierarchy_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_hierarchy_type_id_seq'::regclass);


--
-- Name: trade_item_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_information_type_id_seq'::regclass);


--
-- Name: trade_item_measurements_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_measurements_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_measurements_module_type_id_seq'::regclass);


--
-- Name: trade_item_measurements_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_measurements_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_measurements_type_id_seq'::regclass);


--
-- Name: trade_item_price_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_price_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_price_information_type_id_seq'::regclass);


--
-- Name: trade_item_price_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_price_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_price_type_id_seq'::regclass);


--
-- Name: trade_item_stacking_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_stacking_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_stacking_type_id_seq'::regclass);


--
-- Name: trade_item_synchronisation_dates_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_synchronisation_dates_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.trade_item_synchronisation_dates_type_id_seq'::regclass);


--
-- Name: variable_trade_item_information_module_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.variable_trade_item_information_module_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.variable_trade_item_information_module_type_id_seq'::regclass);


--
-- Name: variable_trade_item_information_type id; Type: DEFAULT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.variable_trade_item_information_type ALTER COLUMN id SET DEFAULT nextval('gdsn_dev.variable_trade_item_information_type_id_seq'::regclass);


--
-- Data for Name: _CataloguePrice; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: _Certification; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_Certification" VALUES (1, 1);
INSERT INTO gdsn_dev."_Certification" VALUES (2, 2);
INSERT INTO gdsn_dev."_Certification" VALUES (3, 3);
INSERT INTO gdsn_dev."_Certification" VALUES (4, 4);
INSERT INTO gdsn_dev."_Certification" VALUES (5, 5);
INSERT INTO gdsn_dev."_Certification" VALUES (6, 6);
INSERT INTO gdsn_dev."_Certification" VALUES (7, 7);
INSERT INTO gdsn_dev."_Certification" VALUES (8, 8);
INSERT INTO gdsn_dev."_Certification" VALUES (9, 9);
INSERT INTO gdsn_dev."_Certification" VALUES (10, 10);


--
-- Data for Name: _CertificationInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_CertificationInformation" VALUES (1, 1);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (2, 2);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (3, 3);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (4, 4);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (5, 5);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (6, 6);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (7, 7);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (8, 8);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (9, 9);
INSERT INTO gdsn_dev."_CertificationInformation" VALUES (10, 10);


--
-- Data for Name: _ChildTradeItem; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (1, 1);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (2, 2);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (3, 4);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (4, 5);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (5, 6);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (6, 7);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (7, 8);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (8, 9);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (9, 10);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (10, 11);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (11, 12);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (13, 14);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (14, 15);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (15, 16);
INSERT INTO gdsn_dev."_ChildTradeItem" VALUES (16, 17);


--
-- Data for Name: _Colour; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_Colour" VALUES (1, 1);
INSERT INTO gdsn_dev."_Colour" VALUES (2, 2);
INSERT INTO gdsn_dev."_Colour" VALUES (3, 6);
INSERT INTO gdsn_dev."_Colour" VALUES (4, 7);
INSERT INTO gdsn_dev."_Colour" VALUES (5, 8);
INSERT INTO gdsn_dev."_Colour" VALUES (6, 9);
INSERT INTO gdsn_dev."_Colour" VALUES (7, 10);


--
-- Data for Name: _ComponentInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_ComponentInformation" VALUES (1, 1);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (2, 2);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (3, 3);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (4, 4);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (5, 5);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (6, 6);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (7, 7);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (8, 9);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (9, 10);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (10, 11);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (11, 12);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (12, 13);
INSERT INTO gdsn_dev."_ComponentInformation" VALUES (13, 14);


--
-- Data for Name: _ConsumerWarningInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_ConsumerWarningInformation" VALUES (1, 1);
INSERT INTO gdsn_dev."_ConsumerWarningInformation" VALUES (2, 2);
INSERT INTO gdsn_dev."_ConsumerWarningInformation" VALUES (3, 3);
INSERT INTO gdsn_dev."_ConsumerWarningInformation" VALUES (4, 4);
INSERT INTO gdsn_dev."_ConsumerWarningInformation" VALUES (5, 5);
INSERT INTO gdsn_dev."_ConsumerWarningInformation" VALUES (6, 6);
INSERT INTO gdsn_dev."_ConsumerWarningInformation" VALUES (7, 7);


--
-- Data for Name: _DataCarrier; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_DataCarrier" VALUES (1, 1);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (2, 2);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (3, 3);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (4, 4);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (5, 5);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (6, 6);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (7, 7);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (8, 8);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (9, 9);
INSERT INTO gdsn_dev."_DataCarrier" VALUES (10, 10);


--
-- Data for Name: _DutyFeeTax; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (1, 1);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (2, 2);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (3, 3);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (4, 4);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (5, 5);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (6, 6);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (7, 7);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (8, 8);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (9, 9);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (10, 10);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (11, 11);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (12, 12);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (13, 13);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (14, 14);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (15, 15);
INSERT INTO gdsn_dev."_DutyFeeTax" VALUES (16, 16);


--
-- Data for Name: _DutyFeeTaxInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (1, 1);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (2, 2);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (3, 3);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (4, 4);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (5, 5);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (6, 6);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (7, 7);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (8, 8);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (9, 9);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (10, 10);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (11, 11);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (12, 12);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (13, 13);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (14, 14);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (15, 15);
INSERT INTO gdsn_dev."_DutyFeeTaxInformation" VALUES (16, 16);


--
-- Data for Name: _ImportClassification; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: _IndividualPackagingComponentLevel; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: _ManufacturerOfTradeItem; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (3, '01111110000077');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (6, '01111110000053');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (10, '01111110000510');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (13, '01111110000527');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (16, '01111110000090');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (19, '01111110000091');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (22, '01111110000098');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (25, '01111110000089');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (28, '01111110000067');
INSERT INTO gdsn_dev."_ManufacturerOfTradeItem" VALUES (83, '01111110001036');


--
-- Data for Name: _Material; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_Material" VALUES (1, 1);
INSERT INTO gdsn_dev."_Material" VALUES (2, 2);
INSERT INTO gdsn_dev."_Material" VALUES (3, 3);
INSERT INTO gdsn_dev."_Material" VALUES (4, 4);
INSERT INTO gdsn_dev."_Material" VALUES (5, 5);
INSERT INTO gdsn_dev."_Material" VALUES (6, 6);
INSERT INTO gdsn_dev."_Material" VALUES (7, 7);


--
-- Data for Name: _MaterialComposition; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_MaterialComposition" VALUES (1, 1);
INSERT INTO gdsn_dev."_MaterialComposition" VALUES (2, 2);
INSERT INTO gdsn_dev."_MaterialComposition" VALUES (3, 3);
INSERT INTO gdsn_dev."_MaterialComposition" VALUES (4, 4);
INSERT INTO gdsn_dev."_MaterialComposition" VALUES (5, 5);
INSERT INTO gdsn_dev."_MaterialComposition" VALUES (6, 6);
INSERT INTO gdsn_dev."_MaterialComposition" VALUES (7, 7);


--
-- Data for Name: _Packaging; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_Packaging" VALUES (1, 1);
INSERT INTO gdsn_dev."_Packaging" VALUES (2, 2);
INSERT INTO gdsn_dev."_Packaging" VALUES (3, 3);
INSERT INTO gdsn_dev."_Packaging" VALUES (4, 4);
INSERT INTO gdsn_dev."_Packaging" VALUES (5, 5);
INSERT INTO gdsn_dev."_Packaging" VALUES (6, 6);
INSERT INTO gdsn_dev."_Packaging" VALUES (7, 7);
INSERT INTO gdsn_dev."_Packaging" VALUES (8, 8);
INSERT INTO gdsn_dev."_Packaging" VALUES (9, 9);
INSERT INTO gdsn_dev."_Packaging" VALUES (10, 10);
INSERT INTO gdsn_dev."_Packaging" VALUES (11, 11);
INSERT INTO gdsn_dev."_Packaging" VALUES (12, 12);
INSERT INTO gdsn_dev."_Packaging" VALUES (13, 13);
INSERT INTO gdsn_dev."_Packaging" VALUES (14, 14);
INSERT INTO gdsn_dev."_Packaging" VALUES (15, 15);
INSERT INTO gdsn_dev."_Packaging" VALUES (16, 16);


--
-- Data for Name: _PackagingMaterial; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (1, 1);
INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (2, 2);
INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (3, 5);
INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (4, 6);
INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (5, 7);
INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (6, 8);
INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (7, 9);
INSERT INTO gdsn_dev."_PackagingMaterial" VALUES (8, 12);


--
-- Data for Name: _ProductCharacteristics; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: _ReferencedFileInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_ReferencedFileInformation" VALUES (1, 1);
INSERT INTO gdsn_dev."_ReferencedFileInformation" VALUES (2, 2);
INSERT INTO gdsn_dev."_ReferencedFileInformation" VALUES (4, 3);
INSERT INTO gdsn_dev."_ReferencedFileInformation" VALUES (5, 4);
INSERT INTO gdsn_dev."_ReferencedFileInformation" VALUES (6, 5);
INSERT INTO gdsn_dev."_ReferencedFileInformation" VALUES (7, 6);
INSERT INTO gdsn_dev."_ReferencedFileInformation" VALUES (8, 7);


--
-- Data for Name: _ReferencedTradeItem; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_ReferencedTradeItem" VALUES (1, '01111110000527');
INSERT INTO gdsn_dev."_ReferencedTradeItem" VALUES (2, '01111110000268');
INSERT INTO gdsn_dev."_ReferencedTradeItem" VALUES (3, '01111110000282');
INSERT INTO gdsn_dev."_ReferencedTradeItem" VALUES (4, '01111110000237');
INSERT INTO gdsn_dev."_ReferencedTradeItem" VALUES (5, '12378954312785');
INSERT INTO gdsn_dev."_ReferencedTradeItem" VALUES (6, '01111110000329');


--
-- Data for Name: _RegulatoryInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_RegulatoryInformation" VALUES (1, 1);
INSERT INTO gdsn_dev."_RegulatoryInformation" VALUES (2, 2);
INSERT INTO gdsn_dev."_RegulatoryInformation" VALUES (3, 3);
INSERT INTO gdsn_dev."_RegulatoryInformation" VALUES (4, 4);
INSERT INTO gdsn_dev."_RegulatoryInformation" VALUES (5, 5);
INSERT INTO gdsn_dev."_RegulatoryInformation" VALUES (6, 6);
INSERT INTO gdsn_dev."_RegulatoryInformation" VALUES (7, 7);


--
-- Data for Name: _TargetMarket; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_TargetMarket" VALUES (1, '01111110000077');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (2, '01111110000053');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (4, '01111110000510');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (5, '01111110000527');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (6, '01111110000090');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (7, '01111110000091');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (8, '01111110000098');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (9, '01111110000089');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (10, '01111110000067');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (11, '07315120000070');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (12, '07315120000155');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (13, '01111110000428');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (14, '01111110000428');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (15, '01111110000060');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (16, '01111110000060');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (17, '01111110000268');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (18, '01111110000282');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (19, '01111110000237');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (20, '12378954312785');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (21, '01111110000329');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (22, '01111110000404');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (23, '01111110000336');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (24, '01111110000378');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (25, '01111110000678');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (26, '01111110000789');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (59, '01111110000345');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (60, '01111110001036');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (61, '01111110001067');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (62, '01111110001074');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (63, '01111110000961');
INSERT INTO gdsn_dev."_TargetMarket" VALUES (64, '01111110000961');


--
-- Data for Name: _TradeItemContactInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_TradeItemContactInformation" VALUES (1, '01111110000077');
INSERT INTO gdsn_dev."_TradeItemContactInformation" VALUES (2, '01111110000053');
INSERT INTO gdsn_dev."_TradeItemContactInformation" VALUES (3, '01111110000090');
INSERT INTO gdsn_dev."_TradeItemContactInformation" VALUES (4, '01111110000091');
INSERT INTO gdsn_dev."_TradeItemContactInformation" VALUES (5, '01111110000098');
INSERT INTO gdsn_dev."_TradeItemContactInformation" VALUES (6, '01111110000089');
INSERT INTO gdsn_dev."_TradeItemContactInformation" VALUES (7, '01111110000067');


--
-- Data for Name: _TradeItemInformation; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (1, '01111110000077');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (2, '01111110000053');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (4, '01111110000510');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (5, '01111110000527');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (6, '01111110000090');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (7, '01111110000091');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (8, '01111110000098');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (9, '01111110000089');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (10, '01111110000067');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (11, '07315120000070');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (12, '07315120000155');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (13, '01111110000428');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (14, '01111110000060');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (15, '01111110000268');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (16, '01111110000282');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (17, '01111110000237');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (18, '12378954312785');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (19, '01111110000329');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (20, '01111110000404');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (21, '01111110000336');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (22, '01111110000378');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (23, '01111110000678');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (24, '01111110000789');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (57, '01111110000345');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (58, '01111110001036');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (59, '01111110001067');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (60, '01111110001074');
INSERT INTO gdsn_dev."_TradeItemInformation" VALUES (61, '01111110000961');


--
-- Data for Name: _TradeItemStacking; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: brand_name_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.brand_name_information_type VALUES (1, 'IKEA', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (2, 'IKEA', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (3, 'IKEA', '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (4, 'IKEA', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (5, 'IKEA', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (6, 'IKEA', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (7, 'IKEA', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (8, 'IKEA', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (9, 'IKEA', '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (10, 'IKEA', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (11, 'test', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL, 'test');
INSERT INTO gdsn_dev.brand_name_information_type VALUES (12, 'IKEA', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL, 'IKEA');
INSERT INTO gdsn_dev.brand_name_information_type VALUES (13, 'IKEA', '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (14, 'IKEA', '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (15, 'IKEA', '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (16, 'IKEA', '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (17, 'IKEA', '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL, NULL);
INSERT INTO gdsn_dev.brand_name_information_type VALUES (50, 'IKEA', '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL, 'test');
INSERT INTO gdsn_dev.brand_name_information_type VALUES (51, 'IKEA', '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL, 'ikea');
INSERT INTO gdsn_dev.brand_name_information_type VALUES (52, 'IKEA', '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL, 'gs');
INSERT INTO gdsn_dev.brand_name_information_type VALUES (53, 'IKEA', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL, 'gs');
INSERT INTO gdsn_dev.brand_name_information_type VALUES (54, 'IKEA', '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL, NULL);


--
-- Data for Name: certification_information_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.certification_information_module_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.976', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (3, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (4, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (5, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (6, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (7, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (8, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (9, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.certification_information_module_type VALUES (10, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);


--
-- Data for Name: certification_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.certification_information_type VALUES (1, 'Entwicklungs- und Prüflabor Holztechnologie GmbH', 'Third Party Certification required within IKEA specification no. IOS-MAT-0003', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (2, 'Entwicklungs- und Prüflabor Holztechnologie GmbH', 'Third Party Certification required within IKEA specification no. IOS-MAT-0003', '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.979', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (3, NULL, NULL, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (4, 'Entwicklungs- und Prüflabor Holztechnologie GmbH', 'Third Party Certification required within IKEA specification no. IOS-MAT-0003', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (5, 'Entwicklungs- und Prüflabor Holztechnologie GmbH', 'Third Party Certification required within IKEA specification no. IOS-MAT-0003', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (6, 'Entwicklungs- und Prüflabor Holztechnologie GmbH', 'Third Party Certification required within IKEA specification no. IOS-MAT-0003', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (7, 'Entwicklungs- und Prüflabor Holztechnologie GmbH', 'Third Party Certification required within IKEA specification no. IOS-MAT-0003', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (8, 'Entwicklungs- und Prüflabor Holztechnologie GmbH', 'Third Party Certification required within IKEA specification no. IOS-MAT-0003', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (9, NULL, NULL, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL, NULL);
INSERT INTO gdsn_dev.certification_information_type VALUES (10, NULL, NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL, NULL);


--
-- Data for Name: certification_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.certification_type VALUES (1, 'Initial TPC certificate no. 2017-08-25-03 - IOS-MAT-0003', '2017-08-25T00:00:00Z', '2024-05-28T11:01:00Z', '2017-08-25T00:00:00Z', '"Fiberboard HDF/MDF HOMADUR Emission 5 in the nominal thickness ränge of < 8 mm"', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (2, 'Initial TPC certificate no. 2017-08-25-03 - IOS-MAT-0003', '2017-08-25T00:00:00Z', '2024-05-28T11:01:00Z', '2017-08-25T00:00:00Z', 'Fiberboard HDF/MDF HOMADUR Emission 5 in the nominal thickness ränge of < 8 mm', '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.979', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (3, '12', '2024-06-19T06:55:00Z', '2024-06-19T06:55:00Z', '2024-06-19T06:55:00Z', NULL, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (4, 'Initial TPC certificate no. 2017-08-25-03 - IOS-MAT-0003', '2017-08-25T00:00:00Z', '2024-05-28T11:01:00Z', '2017-08-25T00:00:00Z', '"Fiberboard HDF/MDF HOMADUR Emission 5 in the nominal thickness ränge of < 8 mm"', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (5, 'Initial TPC certificate no. 2017-08-25-03 - IOS-MAT-0003', '2017-08-25T00:00:00Z', '2024-05-28T11:01:00Z', '2017-08-25T00:00:00Z', '"Fiberboard HDF/MDF HOMADUR Emission 5 in the nominal thickness ränge of < 8 mm"', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (6, 'Initial TPC certificate no. 2017-08-25-03 - IOS-MAT-0003', '2017-08-25T00:00:00Z', '2024-05-28T11:01:00Z', '2017-08-25T00:00:00Z', '"Fiberboard HDF/MDF HOMADUR Emission 5 in the nominal thickness ränge of < 8 mm"', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (7, 'Initial TPC certificate no. 2017-08-25-03 - IOS-MAT-0003', '2017-08-25T00:00:00Z', '2024-05-28T11:01:00Z', '2017-08-25T00:00:00Z', '"Fiberboard HDF/MDF HOMADUR Emission 5 in the nominal thickness ränge of < 8 mm"', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (8, 'Initial TPC certificate no. 2017-08-25-03 - IOS-MAT-0003', '2017-08-25T00:00:00Z', '2024-05-28T11:01:00Z', '2017-08-25T00:00:00Z', '"Fiberboard HDF/MDF HOMADUR Emission 5 in the nominal thickness ränge of < 8 mm"', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (9, '123', NULL, NULL, NULL, NULL, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.certification_type VALUES (10, '76', NULL, NULL, NULL, NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);


--
-- Data for Name: child_trade_item_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.child_trade_item_type VALUES (1, '0111111000084', 3, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (2, '0111111000060', 3, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (3, '0111111000084', 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (4, '0111111000084', 3, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (5, '0111111000084', 3, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (6, '0111111000084', 3, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (7, '0111111000084', 3, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (8, '123', 0, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (9, '01111110000350', 0, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (10, '01111110000268', 0, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (11, '01111110000282', 0, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (13, '01111110000237', 0, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (14, '12378954312785', 0, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (15, '01111110000329', 0, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.child_trade_item_type VALUES (16, '01111110000404', 0, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);


--
-- Data for Name: colour_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.colour_type VALUES (1, '{"content": "\"NCS S 0602-G92Y PANTONE 11-0602 TCX\"", "@colourCodeListCode": "10 ( NCS )"}', '{"content": "WHITE"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.colour_type VALUES (2, '{"content": "NCS S 0602-G92Y PANTONE 11-0602 TCX", "@colourCodeListCode": "10 ( NCS )"}', '{"content": "WHITE"}', '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.981', NULL);
INSERT INTO gdsn_dev.colour_type VALUES (3, '{"content": "\"NCS S 0602-G92Y PANTONE 11-0602 TCX\"", "@colourCodeListCode": "10 ( NCS )"}', '{"content": "WHITE"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.colour_type VALUES (4, '{"content": "\"NCS S 0602-G92Y PANTONE 11-0602 TCX\"", "@colourCodeListCode": "10 ( NCS )"}', '{"content": "WHITE"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.colour_type VALUES (5, '{"content": "\"NCS S 0602-G92Y PANTONE 11-0602 TCX\"", "@colourCodeListCode": "10 ( NCS )"}', '{"content": "WHITE"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.colour_type VALUES (6, '{"content": "\"NCS S 0602-G92Y PANTONE 11-0602 TCX\"", "@colourCodeListCode": "10 ( NCS )"}', '{"content": "WHITE"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.colour_type VALUES (7, '{"content": "\"NCS S 0602-G92Y PANTONE 11-0602 TCX\"", "@colourCodeListCode": "10 ( NCS )"}', '{"content": "WHITE"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: component_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.component_information_type VALUES (1, 5, '{"content": "8006"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (2, 5, '{"content": "8006"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (3, 5, '{"content": "8006"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (4, 5, '{"content": "8006"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (5, 5, '{"content": "8006"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (6, 5, '{"content": "8006"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (7, 5, '{"content": "8006"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (8, 1, NULL, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (9, 1, NULL, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (10, 1, NULL, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (11, 1, NULL, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (12, 1, NULL, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.component_information_type VALUES (13, 1, NULL, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);


--
-- Data for Name: consumer_instructions_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.consumer_instructions_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.consumer_instructions_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.978', NULL);
INSERT INTO gdsn_dev.consumer_instructions_module_type VALUES (3, 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.consumer_instructions_module_type VALUES (4, 4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.consumer_instructions_module_type VALUES (5, 5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.consumer_instructions_module_type VALUES (6, 6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.consumer_instructions_module_type VALUES (7, 7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: consumer_instructions_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.consumer_instructions_type VALUES (1, NULL, '{"{\"content\": \"Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"Screw(s) and plug(s) for the wall are not included. Use screw(s) and plug(s) suitable for your walls. If you are uncertain, seek professional advice. Read and follow each step of the instruction carefully.\\\"\", \"@languageCode\": \"en\"}"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.consumer_instructions_type VALUES (2, NULL, '{"{\"content\": \"Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"Screw(s) and plug(s) for the wall are not included. Use screw(s) and plug(s) suitable for your walls. If you are uncertain, seek professional advice. Read and follow each step of the instruction carefully.\", \"@languageCode\": \"en\"}"}', '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.982', NULL);
INSERT INTO gdsn_dev.consumer_instructions_type VALUES (3, NULL, '{"{\"content\": \"Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"Screw(s) and plug(s) for the wall are not included. Use screw(s) and plug(s) suitable for your walls. If you are uncertain, seek professional advice. Read and follow each step of the instruction carefully.\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.consumer_instructions_type VALUES (4, NULL, '{"{\"content\": \"Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"Screw(s) and plug(s) for the wall are not included. Use screw(s) and plug(s) suitable for your walls. If you are uncertain, seek professional advice. Read and follow each step of the instruction carefully.\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.consumer_instructions_type VALUES (5, NULL, '{"{\"content\": \"Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"Screw(s) and plug(s) for the wall are not included. Use screw(s) and plug(s) suitable for your walls. If you are uncertain, seek professional advice. Read and follow each step of the instruction carefully.\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.consumer_instructions_type VALUES (6, NULL, '{"{\"content\": \"Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"Screw(s) and plug(s) for the wall are not included. Use screw(s) and plug(s) suitable for your walls. If you are uncertain, seek professional advice. Read and follow each step of the instruction carefully.\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.consumer_instructions_type VALUES (7, NULL, '{"{\"content\": \"Wipe clean with a cloth dampened in a mild cleaner.Wipe dry with a clean cloth.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"Screw(s) and plug(s) for the wall are not included. Use screw(s) and plug(s) suitable for your walls. If you are uncertain, seek professional advice. Read and follow each step of the instruction carefully.\\\"\", \"@languageCode\": \"en\"}"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: consumer_warning_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.consumer_warning_information_type VALUES (1, '{"{\"content\": \"\\\"WARNING! Do not hang PLATSA frame with depth 55 cm on walls. It must be placed standing on the floor or on top of another floor standing frame. If you stack several PLATSA frames on top of each other, you need to secure the frames placed at 3 metres or above to the wall using LÄTTHET suspension rail, sold separately. This furniture must be fixed to the wall. \\\"\", \"@languageCode\": \"en\"}"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.consumer_warning_information_type VALUES (2, '{"{\"content\": \"WARNING! Do not hang PLATSA frame with depth 55 cm on walls. It must be placed standing on the floor or on top of another floor standing frame. If you stack several PLATSA frames on top of each other, you need to secure the frames placed at 3 metres or above to the wall using LÄTTHET suspension rail, sold separately. This furniture must be fixed to the wall. \", \"@languageCode\": \"en\"}"}', '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.98', NULL);
INSERT INTO gdsn_dev.consumer_warning_information_type VALUES (3, '{"{\"content\": \"\\\"WARNING! Do not hang PLATSA frame with depth 55 cm on walls. It must be placed standing on the floor or on top of another floor standing frame. If you stack several PLATSA frames on top of each other, you need to secure the frames placed at 3 metres or above to the wall using LÄTTHET suspension rail, sold separately. This furniture must be fixed to the wall. \\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.consumer_warning_information_type VALUES (4, '{"{\"content\": \"\\\"WARNING! Do not hang PLATSA frame with depth 55 cm on walls. It must be placed standing on the floor or on top of another floor standing frame. If you stack several PLATSA frames on top of each other, you need to secure the frames placed at 3 metres or above to the wall using LÄTTHET suspension rail, sold separately. This furniture must be fixed to the wall. \\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.consumer_warning_information_type VALUES (5, '{"{\"content\": \"\\\"WARNING! Do not hang PLATSA frame with depth 55 cm on walls. It must be placed standing on the floor or on top of another floor standing frame. If you stack several PLATSA frames on top of each other, you need to secure the frames placed at 3 metres or above to the wall using LÄTTHET suspension rail, sold separately. This furniture must be fixed to the wall. \\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.consumer_warning_information_type VALUES (6, '{"{\"content\": \"\\\"WARNING! Do not hang PLATSA frame with depth 55 cm on walls. It must be placed standing on the floor or on top of another floor standing frame. If you stack several PLATSA frames on top of each other, you need to secure the frames placed at 3 metres or above to the wall using LÄTTHET suspension rail, sold separately. This furniture must be fixed to the wall. \\\"\", \"@languageCode\": \"en\"}"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.consumer_warning_information_type VALUES (7, '{"{\"content\": \"\\\"WARNING! Do not hang PLATSA frame with depth 55 cm on walls. It must be placed standing on the floor or on top of another floor standing frame. If you stack several PLATSA frames on top of each other, you need to secure the frames placed at 3 metres or above to the wall using LÄTTHET suspension rail, sold separately. This furniture must be fixed to the wall. \\\"\", \"@languageCode\": \"en\"}"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: data_carrier_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.data_carrier_type VALUES (1, NULL, '{"content": "EAN_UPC"}', '{"content": "EAN_13"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (2, NULL, '{"content": "EAN_UPC"}', '{"content": "EAN_13"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (3, '{"{\"content\": \"01\"}"}', '{"content": "GS1_DATAMATRIX"}', '{"content": "DATA_MATRIX_GS1_DIGITAL_LINK_URI"}', '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (4, '{"{\"content\": \"01\"}"}', '{"content": "GS1_DATAMATRIX"}', '{"content": "DATA_MATRIX_GS1_DIGITAL_LINK_URI"}', '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (5, NULL, '{"content": "EAN_UPC"}', '{"content": "EAN_13"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (6, NULL, '{"content": "EAN_UPC"}', '{"content": "EAN_13"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (7, NULL, '{"content": "EAN_UPC"}', '{"content": "EAN_13"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (8, NULL, '{"content": "EAN_UPC"}', '{"content": "EAN_13"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (9, NULL, '{"content": "EAN_UPC"}', '{"content": "EAN_13"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.data_carrier_type VALUES (10, '{"{\"content\": \"01\"}"}', '{"content": "GS1_DATAMATRIX"}', '{"content": "DATA_MATRIX_GS1_DIGITAL_LINK_URI"}', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);


--
-- Data for Name: delivery_purchasing_information_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (3, 3, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (4, 4, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (5, 5, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (6, 6, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (7, 7, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (8, 8, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (9, 9, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-06-26 10:13:37.965', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (10, 10, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (11, 11, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (12, 12, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (13, 13, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (14, 14, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (15, 15, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (16, 16, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_module_type VALUES (17, 17, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: delivery_purchasing_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (1, '2017-04-01T00:00:00Z', NULL, '2022-05-09T00:00:00Z', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (3, '2024-06-19T06:55:00Z', NULL, '2024-06-19T06:55:00Z', '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (4, NULL, NULL, '2023-06-01T00:00:00Z', '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (5, NULL, NULL, '2023-06-01T00:00:00Z', '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (6, '2017-04-01T00:00:00Z', NULL, '2022-05-09T00:00:00Z', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (7, '2017-04-01T00:00:00Z', NULL, '2022-05-09T00:00:00Z', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (8, '2017-04-01T00:00:00Z', NULL, '2022-05-09T00:00:00Z', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (9, '2017-04-01T00:00:00Z', NULL, '2022-05-09T00:00:00Z', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (2, '2017-04-01T00:00:00Z', NULL, '2022-05-09T00:00:00Z', '2024-05-31 11:40:17.032', '2024-06-26 10:13:37.965', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (10, '2017-04-01T00:00:00Z', NULL, '2022-05-09T00:00:00Z', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (11, NULL, NULL, '2023-06-01T00:00:00Z', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (12, '2024-08-12T22:25:00Z', 9, '2024-08-11T22:25:00Z', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (13, '2024-08-22T18:21:00Z', 0, '2024-08-19T18:21:00Z', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (14, NULL, NULL, '2024-08-22T04:25:00Z', '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (15, NULL, NULL, '2024-08-28T15:14:00Z', '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (16, NULL, NULL, '2024-08-29T12:37:00Z', '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.delivery_purchasing_information_type VALUES (17, NULL, NULL, '2024-08-14T13:21:00Z', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: durable_goods_characteristics_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (3, 3, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (4, 4, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (5, 5, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (6, 6, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (7, 7, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (8, 8, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (9, 9, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (10, 10, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (11, 11, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (12, 12, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (13, 13, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (14, 14, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (15, 15, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (16, 16, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (17, 17, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (18, 18, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (19, 19, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (20, 20, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (21, 21, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (22, 22, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (23, 23, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (24, 24, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (57, 57, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (58, 58, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (59, 59, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (60, 60, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_module_type VALUES (61, 61, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: durable_goods_characteristics_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (1, true, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (2, true, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (3, false, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (4, false, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (5, false, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (6, true, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (7, true, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (8, true, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (9, true, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (10, true, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (11, false, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (12, false, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (13, false, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (14, false, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (15, false, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (16, false, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (17, false, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (18, false, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (19, false, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (20, false, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (21, false, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (22, false, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (23, false, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (24, false, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (57, false, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (58, false, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (59, false, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (60, false, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.durable_goods_characteristics_type VALUES (61, false, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: duty_fee_tax_information_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (3, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (4, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (5, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (6, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (7, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (8, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (9, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (10, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (11, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (12, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (13, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (14, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (15, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_module_type VALUES (16, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: duty_fee_tax_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (1, 'VAT - Value added tax', '{"content": "9SE"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (2, 'VAT - Value added tax', '{"content": "9SE"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (3, 'VAT - Value added tax', '{"content": "9SE"}', '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (4, 'VAT - Value added tax', '{"content": "9SE"}', '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (5, 'VAT - Value added tax', '{"content": "9SE"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (6, 'VAT - Value added tax', '{"content": "9SE"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (7, 'VAT - Value added tax', '{"content": "9SE"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (8, 'VAT - Value added tax', '{"content": "9SE"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (9, 'VAT - Value added tax', '{"content": "9SE"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (10, 'VAT - Value added tax', '{"content": "9SE"}', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (11, '12', '{"content": "89"}', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (12, '677', '{"content": "86"}', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (13, '12', '{"content": "91"}', '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (14, '567', '{"content": "X_AB"}', '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (15, '6767', '{"content": "X_BC"}', '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_information_type VALUES (16, '778', '{"content": "60"}', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: duty_fee_tax_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (1, 12, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (2, 12, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (3, 12, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (4, 12, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (5, 12, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (6, 12, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (7, 12, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (8, 12, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (9, 12, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (10, 12, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (11, 9, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (12, 9, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (13, 8, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (14, 50, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (15, 78, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.duty_fee_tax_type VALUES (16, 76, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: extension_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.extension_type VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, 1, 1, NULL, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:54:59.611', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (3, 3, NULL, NULL, NULL, 3, NULL, 3, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (4, NULL, NULL, 3, NULL, 4, NULL, 4, NULL, 3, 3, 3, 4, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (5, NULL, NULL, 4, NULL, 5, NULL, 5, NULL, 4, 4, 4, 5, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (6, 4, 3, 5, 3, 6, 3, 6, 3, 5, 5, 5, 6, NULL, NULL, 3, NULL, 6, 3, NULL, 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (7, 5, 4, 6, 4, 7, 4, 7, 4, 6, 6, 6, 7, NULL, NULL, 4, NULL, 7, 4, NULL, 4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (8, 6, 5, 7, 5, 8, 5, 8, 5, 7, 7, 7, 8, NULL, NULL, 5, NULL, 8, 5, NULL, 5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (9, 7, 6, 8, 6, 9, 6, 9, 6, 8, 8, 8, 9, NULL, NULL, 6, NULL, 9, 6, NULL, 6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, NULL, NULL, 2, NULL, 2, 2, NULL, 2, '2024-05-31 11:40:17.032', '2024-06-26 10:13:37.965', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (10, 8, 7, 9, 7, 10, 7, 10, 7, 9, 9, 9, 10, NULL, NULL, 7, NULL, 10, 7, NULL, 7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (11, NULL, NULL, NULL, NULL, 11, NULL, 11, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (12, NULL, NULL, 10, NULL, 12, NULL, 12, NULL, 10, 10, 10, 12, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (13, NULL, NULL, NULL, NULL, 13, NULL, 13, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (15, 9, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (18, NULL, NULL, 11, NULL, 14, NULL, 18, NULL, 11, NULL, 11, 18, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (19, NULL, NULL, 12, NULL, 15, NULL, 19, NULL, 12, NULL, 12, 19, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (20, NULL, NULL, NULL, NULL, 16, NULL, 20, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (21, NULL, NULL, NULL, NULL, 17, NULL, 21, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (22, NULL, NULL, NULL, NULL, 18, NULL, 22, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (23, NULL, NULL, NULL, NULL, 19, NULL, 23, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (24, NULL, NULL, NULL, NULL, 20, NULL, 24, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (57, NULL, NULL, 13, NULL, 53, NULL, 57, NULL, 13, NULL, 13, 57, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (58, 10, NULL, 14, NULL, 54, NULL, 58, NULL, 14, NULL, 14, 58, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (59, NULL, NULL, 15, NULL, 55, NULL, 59, NULL, 15, NULL, 15, 59, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (60, NULL, NULL, 16, NULL, 56, NULL, 60, NULL, 16, NULL, 16, 60, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL, NULL);
INSERT INTO gdsn_dev.extension_type VALUES (61, NULL, NULL, NULL, NULL, 57, NULL, 61, NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL, NULL);


--
-- Data for Name: gdsn_trade_item_classification_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (1, '10003790', 'Household/Office Storage/Display Furniture Other', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (2, '10003790', 'Household/Office Storage/Display Furniture Other', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (3, '10000006', 'Vegetables - Unprepared/Unprocessed (Shelf Stable)', '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (4, '10002207', 'Household Bed Frames/Bedsteads', '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (5, '10002207', 'Household Bed Frames/Bedsteads', '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (6, '10003790', 'Household/Office Storage/Display Furniture Other', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (7, '10003790', 'Household/Office Storage/Display Furniture Other', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (8, '10003790', 'Household/Office Storage/Display Furniture Other', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (9, '10003790', 'Household/Office Storage/Display Furniture Other', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (10, '10003790', 'Household/Office Storage/Display Furniture Other', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (11, '10000006', 'Vegetables - Unprepared/Unprocessed (Shelf Stable)', '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (12, '10002207', 'Household Bed Frames/Bedsteads', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (13, '10000508', 'Pet Grooming Aids', '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (14, '10008070', 'Cannabis - Biscuits/Cookies (Frozen)', '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (17, '10000513', 'Pet Nutritional Supplements', '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (18, '10101600', 'Pet Nutritional Supplements', '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (20, '10101600', 'Pet Nutritional Supplements', '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (21, '10000657', 'Pet Welfare/Hygiene Variety Packs', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (22, '10101500', 'Pet Welfare/Hygiene', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (23, '10100000', 'Pet Care', '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (24, '10000513', 'Pet Nutritional Supplements', '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (25, '10000513', 'Pet Nutritional Supplements', '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (26, '10000513', 'Pet Nutritional Supplements', '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (27, '10000513', 'Pet Nutritional Supplements', '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (60, '10000738', 'Pet Welfare/Hygiene Other', '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (61, '10000737', 'Pet Nutritional Supplements Other', '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (63, '10000000', 'Pet Care/Food', '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (64, '10101500', 'Pet Welfare/Hygiene', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.gdsn_trade_item_classification_type VALUES (65, '10000738', 'Pet Welfare/Hygiene Other', '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: import_classification_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: individual_packaging_component_level_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: marketing_information_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.marketing_information_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.marketing_information_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.977', NULL);
INSERT INTO gdsn_dev.marketing_information_module_type VALUES (3, 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.marketing_information_module_type VALUES (4, 4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.marketing_information_module_type VALUES (5, 5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.marketing_information_module_type VALUES (6, 6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.marketing_information_module_type VALUES (7, 7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: marketing_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.marketing_information_type VALUES (1, '{"{\"content\": \"\\\"You can organize the inside with furnishings from the HELP series - and for the outside there are smart solutions from the LÄTTHET series. You can easily create a storage solution that suits your needs and your space by combining frames in different\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"You can easily attach several PLATSA frames to each other using the included cli\"}"}', '{"{\"content\": \"Build your PLATSA storage as you want it – high or low, under a sloping ceiling or along an entire wall. It assembles in minutes with a simple “click”. Finish with doors and interior organisers as needed.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"IKEA of Sweden\", \"@languageCode\": \"en\"}"}', NULL, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.marketing_information_type VALUES (2, '{"{\"content\": \"You can organize the inside with furnishings from the HELP series - and for the outside there are smart solutions from the LÄTTHET series. You can easily create a storage solution that suits your needs and your space by combining frames in different\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"You can easily attach several PLATSA frames to each other using the included cli\"}"}', '{"{\"content\": \"Build your PLATSA storage as you want it – high or low, under a sloping ceiling or along an entire wall. It assembles in minutes with a simple “click”. Finish with doors and interior organisers as needed.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"IKEA of Sweden\", \"@languageCode\": \"en\"}"}', NULL, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.979', NULL);
INSERT INTO gdsn_dev.marketing_information_type VALUES (3, '{"{\"content\": \"\\\"You can organize the inside with furnishings from the HELP series - and for the outside there are smart solutions from the LÄTTHET series. You can easily create a storage solution that suits your needs and your space by combining frames in different\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"You can easily attach several PLATSA frames to each other using the included cli\"}"}', '{"{\"content\": \"Build your PLATSA storage as you want it – high or low, under a sloping ceiling or along an entire wall. It assembles in minutes with a simple “click”. Finish with doors and interior organisers as needed.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"IKEA of Sweden\", \"@languageCode\": \"en\"}"}', NULL, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.marketing_information_type VALUES (4, '{"{\"content\": \"\\\"You can organize the inside with furnishings from the HELP series - and for the outside there are smart solutions from the LÄTTHET series. You can easily create a storage solution that suits your needs and your space by combining frames in different\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"You can easily attach several PLATSA frames to each other using the included cli\"}"}', '{"{\"content\": \"Build your PLATSA storage as you want it – high or low, under a sloping ceiling or along an entire wall. It assembles in minutes with a simple “click”. Finish with doors and interior organisers as needed.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"IKEA of Sweden\", \"@languageCode\": \"en\"}"}', NULL, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.marketing_information_type VALUES (5, '{"{\"content\": \"\\\"You can organize the inside with furnishings from the HELP series - and for the outside there are smart solutions from the LÄTTHET series. You can easily create a storage solution that suits your needs and your space by combining frames in different\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"You can easily attach several PLATSA frames to each other using the included cli\"}"}', '{"{\"content\": \"Build your PLATSA storage as you want it – high or low, under a sloping ceiling or along an entire wall. It assembles in minutes with a simple “click”. Finish with doors and interior organisers as needed.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"IKEA of Sweden\", \"@languageCode\": \"en\"}"}', NULL, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.marketing_information_type VALUES (6, '{"{\"content\": \"\\\"You can organize the inside with furnishings from the HELP series - and for the outside there are smart solutions from the LÄTTHET series. You can easily create a storage solution that suits your needs and your space by combining frames in different\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"You can easily attach several PLATSA frames to each other using the included cli\"}"}', '{"{\"content\": \"Build your PLATSA storage as you want it – high or low, under a sloping ceiling or along an entire wall. It assembles in minutes with a simple “click”. Finish with doors and interior organisers as needed.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"IKEA of Sweden\", \"@languageCode\": \"en\"}"}', NULL, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.marketing_information_type VALUES (7, '{"{\"content\": \"\\\"You can organize the inside with furnishings from the HELP series - and for the outside there are smart solutions from the LÄTTHET series. You can easily create a storage solution that suits your needs and your space by combining frames in different\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"You can easily attach several PLATSA frames to each other using the included cli\"}"}', '{"{\"content\": \"Build your PLATSA storage as you want it – high or low, under a sloping ceiling or along an entire wall. It assembles in minutes with a simple “click”. Finish with doors and interior organisers as needed.\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"IKEA of Sweden\", \"@languageCode\": \"en\"}"}', NULL, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: material_composition_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.material_composition_type VALUES (1, '{"{\"content\": \"Fiberboard, Paper foil, Chipboard, Honeycomb patterned paper filling (\", \"@languageCode\": \"en\"}"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.material_composition_type VALUES (2, '{"{\"content\": \"Fiberboard, Paper foil, Chipboard, Honeycomb patterned paper filling (\", \"@languageCode\": \"en\"}"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.material_composition_type VALUES (3, '{"{\"content\": \"Fiberboard, Paper foil, Chipboard, Honeycomb patterned paper filling (\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.material_composition_type VALUES (4, '{"{\"content\": \"Fiberboard, Paper foil, Chipboard, Honeycomb patterned paper filling (\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.material_composition_type VALUES (5, '{"{\"content\": \"Fiberboard, Paper foil, Chipboard, Honeycomb patterned paper filling (\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.material_composition_type VALUES (6, '{"{\"content\": \"Fiberboard, Paper foil, Chipboard, Honeycomb patterned paper filling (\", \"@languageCode\": \"en\"}"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.material_composition_type VALUES (7, '{"{\"content\": \"Fiberboard, Paper foil, Chipboard, Honeycomb patterned paper filling (\", \"@languageCode\": \"en\"}"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: material_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.material_module_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.material_module_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.material_module_type VALUES (3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.material_module_type VALUES (4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.material_module_type VALUES (5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.material_module_type VALUES (6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.material_module_type VALUES (7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: material_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.material_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.material_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.material_type VALUES (3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.material_type VALUES (4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.material_type VALUES (5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.material_type VALUES (6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.material_type VALUES (7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: next_lower_level_trade_item_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (1, 3, 3, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (2, 3, 3, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (3, 0, 0, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (4, 3, 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (5, 3, 3, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (6, 3, 3, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (7, 3, 3, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (8, 3, 3, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (9, 0, 0, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (10, 0, 0, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (11, 0, 0, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (12, 0, 0, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (14, 0, 0, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (15, 0, 0, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (16, 0, 0, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.next_lower_level_trade_item_information_type VALUES (17, 0, 0, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);


--
-- Data for Name: packaging_dimension_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.packaging_dimension_type VALUES (1, '{"content": 9, "@measurementUnitCode": "AS"}', '{"content": 9, "@measurementUnitCode": "[beth U]"}', '{"content": 8, "@measurementUnitCode": "B"}', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.packaging_dimension_type VALUES (2, '{"content": 90, "@measurementUnitCode": "AMP"}', '{"content": 67, "@measurementUnitCode": "BPM"}', '{"content": 78, "@measurementUnitCode": "[beth U]"}', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: packaging_information_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.packaging_information_module_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (3, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (4, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (5, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (6, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (7, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (8, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (9, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (10, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (11, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (12, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (13, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (14, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (15, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.packaging_information_module_type VALUES (16, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: packaging_marking_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.packaging_marking_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.packaging_marking_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.977', NULL);
INSERT INTO gdsn_dev.packaging_marking_module_type VALUES (3, 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.packaging_marking_module_type VALUES (4, 4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.packaging_marking_module_type VALUES (5, 5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.packaging_marking_module_type VALUES (6, 6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.packaging_marking_module_type VALUES (7, 7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: packaging_marking_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.packaging_marking_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.packaging_marking_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.98', NULL);
INSERT INTO gdsn_dev.packaging_marking_type VALUES (3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.packaging_marking_type VALUES (4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.packaging_marking_type VALUES (5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.packaging_marking_type VALUES (6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.packaging_marking_type VALUES (7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: packaging_material_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.packaging_material_type VALUES (1, '{"content": "CORRUGATED_BOARD_OTHER"}', '{"{\"content\": 0.89, \"@measurementUnitCode\": \"KGM\"}"}', '{"content": "LABEL_ON_PACKAGING"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.packaging_material_type VALUES (2, '{"content": "CORRUGATED_BOARD_OTHER"}', '{"{\"content\": 0.89, \"@measurementUnitCode\": \"KGM\"}"}', '{"content": "LABEL_ON_PACKAGING"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.packaging_material_type VALUES (3, '{"content": "CORRUGATED_BOARD_OTHER"}', '{"{\"content\": 0.89, \"@measurementUnitCode\": \"KGM\"}"}', '{"content": "LABEL_ON_PACKAGING"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.packaging_material_type VALUES (4, '{"content": "CORRUGATED_BOARD_OTHER"}', '{"{\"content\": 0.89, \"@measurementUnitCode\": \"KGM\"}"}', '{"content": "LABEL_ON_PACKAGING"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.packaging_material_type VALUES (5, '{"content": "CORRUGATED_BOARD_OTHER"}', '{"{\"content\": 0.89, \"@measurementUnitCode\": \"KGM\"}"}', '{"content": "LABEL_ON_PACKAGING"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.packaging_material_type VALUES (6, '{"content": "CORRUGATED_BOARD_OTHER"}', '{"{\"content\": 0.89, \"@measurementUnitCode\": \"KGM\"}"}', '{"content": "LABEL_ON_PACKAGING"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.packaging_material_type VALUES (7, '{"content": "CORRUGATED_BOARD_OTHER"}', '{"{\"content\": 0.89, \"@measurementUnitCode\": \"KGM\"}"}', '{"content": "LABEL_ON_PACKAGING"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.packaging_material_type VALUES (8, '{"content": "CLOTH_OR_FABRIC"}', '{"{\"content\": 6, \"@measurementUnitCode\": \"B\"}"}', NULL, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);


--
-- Data for Name: packaging_sustainability_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: packaging_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.packaging_type VALUES (1, '{"{\"content\": \"BASE\"}"}', '{"{\"content\": \"PROTECTED\"}"}', '{"content": "BX"}', NULL, NULL, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (2, '{"{\"content\": \"BASE\"}"}', '{"{\"content\": \"PROTECTED\"}"}', '{"content": "BX"}', NULL, NULL, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (3, NULL, NULL, '{"content": "BX"}', NULL, NULL, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (4, NULL, NULL, '{"content": "BX"}', NULL, NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (5, '{"{\"content\": \"BASE\"}"}', '{"{\"content\": \"PROTECTED\"}"}', '{"content": "BX"}', NULL, NULL, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (6, '{"{\"content\": \"BASE\"}"}', '{"{\"content\": \"PROTECTED\"}"}', '{"content": "BX"}', NULL, NULL, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (7, '{"{\"content\": \"BASE\"}"}', '{"{\"content\": \"PROTECTED\"}"}', '{"content": "BX"}', NULL, NULL, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (8, '{"{\"content\": \"BASE\"}"}', '{"{\"content\": \"PROTECTED\"}"}', '{"content": "BX"}', NULL, NULL, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (9, '{"{\"content\": \"BASE\"}"}', '{"{\"content\": \"PROTECTED\"}"}', '{"content": "BX"}', NULL, NULL, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (10, NULL, NULL, '{"content": "BX"}', NULL, NULL, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (11, NULL, NULL, '{"content": "CM"}', '{"content": 8, "@measurementUnitCode": "BPM"}', NULL, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (12, '{"{\"content\": \"BUTTERFLY_TAP\"}"}', '{"{\"content\": \"GIFT_WRAPPED\"}"}', '{"content": "BA"}', '{"content": 7, "@measurementUnitCode": "AXU"}', NULL, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL, 1);
INSERT INTO gdsn_dev.packaging_type VALUES (13, NULL, NULL, '{"content": "CNG"}', '{"content": 9, "@measurementUnitCode": "D43"}', NULL, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (14, NULL, NULL, '{"content": "BK"}', '{"content": 78, "@measurementUnitCode": "A11"}', NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (15, NULL, NULL, '{"content": "BJ"}', '{"content": 90, "@measurementUnitCode": "AMP"}', NULL, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL, NULL);
INSERT INTO gdsn_dev.packaging_type VALUES (16, '{"{\"content\": \"BEAM\"}"}', '{"{\"content\": \"MODIFIED_ATMOSPHERE\"}"}', '{"content": "CP"}', '{"content": 90, "@measurementUnitCode": "BFT"}', '{"content": "32"}', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL, 2);


--
-- Data for Name: party_in_role_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.party_in_role_type VALUES (1, '07311640000026', NULL, 'IKEA of Sweden', NULL, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (2, '07311640000026', NULL, ' IKEA of Sweden AB', NULL, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (3, '7320350010041', '"Street:Chlastawa 17	 State/province name:PLLB ZIP/Postal code: 66-210		 City:Zbaszynek		 Country:PL	"', 'IKEA Industry Poland Sp. z o.o. o/w Zbaszynku', '{"content": "SUPPLIER"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (4, '07311640000026', NULL, ' IKEA of Sweden AB', NULL, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (6, '7320350010041', '"Street:Chlastawa 17	 State/province name:PLLB ZIP/Postal code: 66-210		 City:Zbaszynek		 Country:PL	"', 'IKEA Industry Poland Sp. z o.o. o/w Zbaszynku', '{"content": "SUPPLIER"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (7, '07311640000026', NULL, NULL, NULL, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (8, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (9, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (10, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (11, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (12, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (13, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (14, '07311640000026', NULL, ' IKEA of Sweden AB', NULL, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (15, '07311640000026', NULL, 'IKEA of Sweden', NULL, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (16, '7320350010041', '"Street:Chlastawa 17	 State/province name:PLLB ZIP/Postal code: 66-210		 City:Zbaszynek		 Country:PL	"', 'IKEA Industry Poland Sp. z o.o. o/w Zbaszynku', '{"content": "SUPPLIER"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (17, '07311640000026', NULL, ' IKEA of Sweden AB', NULL, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (18, '07311640000026', NULL, 'IKEA of Sweden', NULL, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (19, '7320350010041', '"Street:Chlastawa 17	 State/province name:PLLB ZIP/Postal code: 66-210		 City:Zbaszynek		 Country:PL	"', 'IKEA Industry Poland Sp. z o.o. o/w Zbaszynku', '{"content": "SUPPLIER"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (20, '07311640000026', NULL, ' IKEA of Sweden AB', NULL, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (21, '07311640000026', NULL, 'IKEA of Sweden', NULL, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (22, '7320350010041', '"Street:Chlastawa 17	 State/province name:PLLB ZIP/Postal code: 66-210		 City:Zbaszynek		 Country:PL	"', 'IKEA Industry Poland Sp. z o.o. o/w Zbaszynku', '{"content": "SUPPLIER"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (23, '07311640000026', NULL, ' IKEA of Sweden AB', NULL, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (24, '07311640000026', NULL, 'IKEA of Sweden', NULL, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (25, '7320350010041', '"Street:Chlastawa 17	 State/province name:PLLB ZIP/Postal code: 66-210		 City:Zbaszynek		 Country:PL	"', 'IKEA Industry Poland Sp. z o.o. o/w Zbaszynku', '{"content": "SUPPLIER"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (5, '07311640000026', 'IKEA Chennai', 'IKEA of Sweden', NULL, '2024-05-31 11:40:17.032', '2024-06-26 10:14:42.645', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (26, '07311640000026', NULL, ' IKEA of Sweden AB', NULL, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (27, '07311640000026', NULL, 'IKEA of Sweden', NULL, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (28, '7320350010041', '"Street:Chlastawa 17	 State/province name:PLLB ZIP/Postal code: 66-210		 City:Zbaszynek		 Country:PL	"', 'IKEA Industry Poland Sp. z o.o. o/w Zbaszynku', '{"content": "SUPPLIER"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (29, '01111110000078', NULL, NULL, NULL, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (30, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (31, '07311640000026', NULL, 'IKEA of Sweden AB', NULL, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (32, '07311640000026', NULL, 'Ikea of sweden', NULL, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (33, '7311640000026', NULL, NULL, NULL, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (36, '1111117000001', NULL, NULL, NULL, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (37, '1111117000001', NULL, NULL, NULL, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (39, '1111117000001', NULL, NULL, NULL, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (40, '1111117000001', NULL, 'IKEA', NULL, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (41, '1111117000001', 'test', 'IKEA', '{"content": "CONSOLIDATOR"}', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (42, '1111117000001', NULL, 'IKEA', '{"content": "CENTRAL_PAYMENT_SERVICE"}', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (43, '1111117000001', NULL, NULL, NULL, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (44, '1111117000001', NULL, NULL, NULL, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (45, '1111117000001', NULL, NULL, NULL, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (46, NULL, 'test', NULL, NULL, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (47, NULL, 'test', NULL, NULL, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (80, '1111117000001', NULL, 'IKEA', NULL, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (81, '1111117000001', NULL, 'ikea', NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (82, '1111117000001', NULL, 'ikea', NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (83, '1111117000001', NULL, 'ikea', NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (86, '1111117000001', NULL, 'ikea', NULL, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (87, '1111117000001', NULL, 'ikea', NULL, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (88, '1111117000001', NULL, 'ikea', NULL, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.party_in_role_type VALUES (89, '1111117000001', NULL, NULL, NULL, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: place_of_item_activity_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: place_of_product_activity_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: product_characteristics_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: product_characteristics_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: referenced_file_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.referenced_file_information_type VALUES (1, '{"content": "PRODUCT_WEBSITE"}', NULL, 'PDF', NULL, 'https://www.ikea.com/se/sv/p/platsa-stomme-vit-70330969/', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.referenced_file_information_type VALUES (2, '{"content": "PRODUCT_WEBSITE"}', NULL, 'PDF', NULL, 'https://www.ikea.com/se/sv/p/platsa-stomme-vit-70330969/', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.referenced_file_information_type VALUES (3, '{"content": "PRODUCT_WEBSITE"}', NULL, 'PDF', NULL, 'https://www.ikea.com/se/sv/p/platsa-stomme-vit-70330969/', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.referenced_file_information_type VALUES (4, '{"content": "PRODUCT_WEBSITE"}', NULL, 'PDF', NULL, 'https://www.ikea.com/se/sv/p/platsa-stomme-vit-70330969/', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.referenced_file_information_type VALUES (5, '{"content": "PRODUCT_WEBSITE"}', NULL, 'PDF', NULL, 'https://www.ikea.com/se/sv/p/platsa-stomme-vit-70330969/', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.referenced_file_information_type VALUES (6, '{"content": "PRODUCT_WEBSITE"}', NULL, 'PDF', NULL, 'https://www.ikea.com/se/sv/p/platsa-stomme-vit-70330969/', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.referenced_file_information_type VALUES (7, '{"content": "PRODUCT_WEBSITE"}', NULL, 'PDF', NULL, 'https://www.ikea.com/se/sv/p/platsa-stomme-vit-70330969/', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: referenced_trade_item_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.referenced_trade_item_type VALUES (1, '01111110000527', '{"content": "EQUIVALENT"}', NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.referenced_trade_item_type VALUES (2, '01111110000268', '{"content": "REPLACED"}', NULL, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.referenced_trade_item_type VALUES (3, '01111110000282', '{"content": "ITEM_VARIANT_MASTER"}', NULL, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.referenced_trade_item_type VALUES (4, '01111110000237', '{"content": "DEPENDENT_PROPRIETARY"}', NULL, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.referenced_trade_item_type VALUES (5, '12378954312785', '{"content": "EQUIVALENT"}', '{"{\"content\": \"12\", \"@additionalTradeItemIdentificationTypeCode\": \"BNDA\"}"}', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.referenced_trade_item_type VALUES (6, '01111110000329', '{"content": "PRIMARY_ALTERNATIVE"}', '{"{\"content\": \"123\", \"@additionalTradeItemIdentificationTypeCode\": \"DGPML_BJ\"}"}', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);


--
-- Data for Name: regulated_trade_item_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.regulated_trade_item_module_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.regulated_trade_item_module_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.regulated_trade_item_module_type VALUES (3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.regulated_trade_item_module_type VALUES (4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.regulated_trade_item_module_type VALUES (5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.regulated_trade_item_module_type VALUES (6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.regulated_trade_item_module_type VALUES (7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: regulatory_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.regulatory_information_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL, NULL);
INSERT INTO gdsn_dev.regulatory_information_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL, NULL);
INSERT INTO gdsn_dev.regulatory_information_type VALUES (3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL, NULL);
INSERT INTO gdsn_dev.regulatory_information_type VALUES (4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL, NULL);
INSERT INTO gdsn_dev.regulatory_information_type VALUES (5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL, NULL);
INSERT INTO gdsn_dev.regulatory_information_type VALUES (6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL, NULL);
INSERT INTO gdsn_dev.regulatory_information_type VALUES (7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL, NULL);


--
-- Data for Name: sales_information_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: sustainability_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.sustainability_information_type VALUES (1, NULL, NULL, '{"{\"content\": \"CIRCULAR_ECONOMY\"}"}', '{"{\"content\": \"This product is rated 100% for adaptability, care, disassembly & reassembly, and standardizations.\", \"@languageCode\": \"en\"}"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.sustainability_information_type VALUES (2, NULL, NULL, '{"{\"content\": \"CIRCULAR_ECONOMY\"}"}', '{"{\"content\": \"This product is rated 100% for adaptability, care, disassembly & reassembly, and standardizations.\", \"@languageCode\": \"en\"}"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.sustainability_information_type VALUES (3, NULL, NULL, '{"{\"content\": \"CIRCULAR_ECONOMY\"}"}', '{"{\"content\": \"This product is rated 100% for adaptability, care, disassembly & reassembly, and standardizations.\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.sustainability_information_type VALUES (4, NULL, NULL, '{"{\"content\": \"CIRCULAR_ECONOMY\"}"}', '{"{\"content\": \"This product is rated 100% for adaptability, care, disassembly & reassembly, and standardizations.\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.sustainability_information_type VALUES (5, NULL, NULL, '{"{\"content\": \"CIRCULAR_ECONOMY\"}"}', '{"{\"content\": \"This product is rated 100% for adaptability, care, disassembly & reassembly, and standardizations.\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.sustainability_information_type VALUES (6, NULL, NULL, '{"{\"content\": \"CIRCULAR_ECONOMY\"}"}', '{"{\"content\": \"This product is rated 100% for adaptability, care, disassembly & reassembly, and standardizations.\", \"@languageCode\": \"en\"}"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.sustainability_information_type VALUES (7, NULL, NULL, '{"{\"content\": \"CIRCULAR_ECONOMY\"}"}', '{"{\"content\": \"This product is rated 100% for adaptability, care, disassembly & reassembly, and standardizations.\", \"@languageCode\": \"en\"}"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: sustainability_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.sustainability_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.sustainability_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.sustainability_module_type VALUES (3, 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.sustainability_module_type VALUES (4, 4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.sustainability_module_type VALUES (5, 5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.sustainability_module_type VALUES (6, 6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.sustainability_module_type VALUES (7, 7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: target_market_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.target_market_type VALUES (1, '{"content": "752"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (2, '{"content": "752"}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (3, '{"content": 32}', '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (4, '{"content": "752"}', '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (5, '{"content": "752"}', '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (6, '{"content": "752"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (7, '{"content": "752"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (8, '{"content": "752"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (9, '{"content": "752"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (10, '{"content": "752"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (11, '{"content": "248"}', '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (12, '{"content": "752"}', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (13, '{"content": "4"}', '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (14, '{"content": "248"}', '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (15, '{"content": "12"}', '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (16, '{"content": "8"}', '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (17, '{"content": "248"}', '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (18, '{"content": "248"}', '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (19, '{"content": "4"}', '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (20, '{"content": "4"}', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (21, '{"content": "4"}', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (22, '{"content": "4"}', '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (23, '{"content": "248"}', '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (24, '{"content": "4"}', '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (25, '{"content": "4"}', '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (26, '{"content": "4"}', '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (59, '{"content": "4"}', '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (60, '{"content": "4"}', '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (61, '{"content": "4"}', '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (62, '{"content": "4"}', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (63, '{"content": "4"}', '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);
INSERT INTO gdsn_dev.target_market_type VALUES (64, '{"content": "248"}', '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: trade_item_components_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_components_type VALUES (1, 5, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (2, 5, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (3, 5, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (4, 5, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (5, 5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (6, 5, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (7, 5, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (8, 0, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (9, 0, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL, 0);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (10, 0, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL, 0);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (11, 0, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL, 0);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (12, 0, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL, 0);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (13, 0, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL, 0);
INSERT INTO gdsn_dev.trade_item_components_type VALUES (14, 0, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL, 0);


--
-- Data for Name: trade_item_contact_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_contact_information_type VALUES (1, '{"content": "CXC"}', 'IKEA of Sweden AB, SE -34381 Älmhult', 'IKEA of Sweden AB', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.trade_item_contact_information_type VALUES (2, '{"content": "CXC"}', 'IKEA of Sweden AB, SE -34381 Älmhult', 'IKEA of Sweden AB', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.trade_item_contact_information_type VALUES (3, '{"content": "CXC"}', 'IKEA of Sweden AB, SE -34381 Älmhult', 'IKEA of Sweden AB', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_contact_information_type VALUES (4, '{"content": "CXC"}', 'IKEA of Sweden AB, SE -34381 Älmhult', 'IKEA of Sweden AB', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_contact_information_type VALUES (5, '{"content": "CXC"}', 'IKEA of Sweden AB, SE -34381 Älmhult', 'IKEA of Sweden AB', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_contact_information_type VALUES (6, '{"content": "CXC"}', 'IKEA of Sweden AB, SE -34381 Älmhult', 'IKEA of Sweden AB', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_contact_information_type VALUES (7, '{"content": "CXC"}', 'IKEA of Sweden AB, SE -34381 Älmhult', 'IKEA of Sweden AB', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: trade_item_data_carrier_and_identification_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (3, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (4, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (5, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (6, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (7, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (8, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (9, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.trade_item_data_carrier_and_identification_module_type VALUES (10, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);


--
-- Data for Name: trade_item_description_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (1, '{"{\"content\": \"Frame, white, 80x55x60 cm\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"PLATSA 80x55x60 cm (31 1/2x21 5/8x23 5/8\\\"\\\") 14 kg (30 lbs) 703.309.69 14729 AI(240)00000000000000 AI(13)000000 00-00-00 (YY-MM-DD) PI-487135-1 IKEA of Sweden AB, SE -34381 Älmhult © Inter IKEA Systems B.V. 2021 Made in Poland\\\"\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"80x55x60\", \"@languageCode\": \"en\"}"}', 1, '2024-05-29 08:45:00.542', '2024-05-29 08:54:59.611', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (2, '{"{\"content\": \"Frame, white, 80x55x60 cm\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA 80x55x60 cm (31 1/2x21 5/8x23 5/8\\\"\\\") 14 kg (30 lbs) 703.309.69 14729 AI(240)00000000000000 AI(13)000000 00-00-00 (YY-MM-DD) PI-487135-1 IKEA of Sweden AB, SE -34381 Älmhult © Inter IKEA Systems B.V. 2021 Made in Poland\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"80x55x60\", \"@languageCode\": \"en\"}"}', 2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.981', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (3, NULL, NULL, NULL, NULL, 3, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (4, '{"{\"content\": \"IDANÄS uph stor bed 160x200 Gunnare\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"Idanäs\", \"@languageCode\": \"en\"}"}', NULL, NULL, NULL, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (5, '{"{\"content\": \"IDANÄS uph stor bed 160x200 Gunnare\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"Idanäs\", \"@languageCode\": \"en\"}"}', NULL, NULL, NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (6, '{"{\"content\": \"Frame, white, 80x55x60 cm\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"PLATSA 80x55x60 cm (31 1/2x21 5/8x23 5/8\\\"\\\") 14 kg (30 lbs) 703.309.69 14729 AI(240)00000000000000 AI(13)000000 00-00-00 (YY-MM-DD) PI-487135-1 IKEA of Sweden AB, SE -34381 Älmhult © Inter IKEA Systems B.V. 2021 Made in Poland\\\"\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"80x55x60\", \"@languageCode\": \"en\"}"}', 4, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (7, '{"{\"content\": \"Frame, white, 80x55x60 cm\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"PLATSA 80x55x60 cm (31 1/2x21 5/8x23 5/8\\\"\\\") 14 kg (30 lbs) 703.309.69 14729 AI(240)00000000000000 AI(13)000000 00-00-00 (YY-MM-DD) PI-487135-1 IKEA of Sweden AB, SE -34381 Älmhult © Inter IKEA Systems B.V. 2021 Made in Poland\\\"\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"80x55x60\", \"@languageCode\": \"en\"}"}', 5, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (8, '{"{\"content\": \"Frame, white, 80x55x60 cm\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"PLATSA 80x55x60 cm (31 1/2x21 5/8x23 5/8\\\"\\\") 14 kg (30 lbs) 703.309.69 14729 AI(240)00000000000000 AI(13)000000 00-00-00 (YY-MM-DD) PI-487135-1 IKEA of Sweden AB, SE -34381 Älmhult © Inter IKEA Systems B.V. 2021 Made in Poland\\\"\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"80x55x60\", \"@languageCode\": \"en\"}"}', 6, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (9, '{"{\"content\": \"Frame, white, 80x55x60 cm\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"PLATSA 80x55x60 cm (31 1/2x21 5/8x23 5/8\\\"\\\") 14 kg (30 lbs) 703.309.69 14729 AI(240)00000000000000 AI(13)000000 00-00-00 (YY-MM-DD) PI-487135-1 IKEA of Sweden AB, SE -34381 Älmhult © Inter IKEA Systems B.V. 2021 Made in Poland\\\"\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"80x55x60\", \"@languageCode\": \"en\"}"}', 7, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (10, '{"{\"content\": \"Frame, white, 80x55x60 cm\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"PLATSA\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"\\\"PLATSA 80x55x60 cm (31 1/2x21 5/8x23 5/8\\\"\\\") 14 kg (30 lbs) 703.309.69 14729 AI(240)00000000000000 AI(13)000000 00-00-00 (YY-MM-DD) PI-487135-1 IKEA of Sweden AB, SE -34381 Älmhult © Inter IKEA Systems B.V. 2021 Made in Poland\\\"\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"80x55x60\", \"@languageCode\": \"en\"}"}', 8, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (11, NULL, NULL, NULL, NULL, 9, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (12, '{"{\"content\": \"IDANÄS uph stor bed 160x200 Gunnare\", \"@languageCode\": \"en\"}"}', '{"{\"content\": \"Idanäs\", \"@languageCode\": \"en\"}"}', NULL, NULL, 10, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (13, NULL, '{"{\"content\": \"Testidanas1\", \"@languageCode\": \"en\"}"}', NULL, NULL, NULL, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (14, '{"{\"content\": \"teast\", \"@languageCode\": \"ba\"}"}', '{"{\"content\": \"123\", \"@languageCode\": \"sq\"}"}', NULL, NULL, 11, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (15, '{"{\"content\": \"test\", \"@languageCode\": \"ay\"}"}', '{"{\"content\": \"test\", \"@languageCode\": \"sq\"}"}', NULL, NULL, 12, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (16, NULL, NULL, NULL, NULL, 13, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (17, NULL, NULL, NULL, NULL, 14, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (18, NULL, NULL, NULL, NULL, 15, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (19, NULL, NULL, NULL, NULL, 16, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (20, NULL, NULL, NULL, NULL, 17, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (53, '{"{\"content\": \"TEST\", \"@languageCode\": \"ak\"}"}', '{"{\"content\": \"TEST\", \"@languageCode\": \"sq\"}"}', NULL, NULL, 50, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (54, '{"{\"content\": \"ghvhbvn\", \"@languageCode\": \"ar\"}"}', '{"{\"content\": \"gs\", \"@languageCode\": \"ar\"}"}', NULL, NULL, 51, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (55, '{"{\"content\": \"gfbv\", \"@languageCode\": \"av\"}"}', '{"{\"content\": \"gs\", \"@languageCode\": \"ak\"}"}', NULL, NULL, 52, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (56, '{"{\"content\": \"ghh\", \"@languageCode\": \"ab\"}"}', '{"{\"content\": \"ikes\", \"@languageCode\": \"eu\"}"}', NULL, NULL, 53, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.trade_item_description_information_type VALUES (57, NULL, NULL, NULL, NULL, 54, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: trade_item_description_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:54:59.611', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.977', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (3, 3, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (4, 4, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (5, 5, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (6, 6, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (7, 7, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (8, 8, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (9, 9, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (10, 10, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (11, 11, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (12, 12, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (13, 13, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (14, 14, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (15, 15, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (16, 16, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (17, 17, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (18, 18, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (19, 19, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (20, 20, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (53, 53, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (54, 54, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (55, 55, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (56, 56, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.trade_item_description_module_type VALUES (57, 57, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: trade_item_handling_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_handling_information_type VALUES (1, '{"{\"content\": \"\\\"Serious or fatal crushing injuries can occur from furniture tip over. To prevent tip over this furniture must be used with the wall attachment device(s) provided\\\"\", \"@languageCode\": \"en\"}"}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.trade_item_handling_information_type VALUES (2, '{"{\"content\": \"Serious or fatal crushing injuries can occur from furniture tip over. To prevent tip over this furniture must be used with the wall attachment device(s) provided\", \"@languageCode\": \"en\"}"}', '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.981', NULL);
INSERT INTO gdsn_dev.trade_item_handling_information_type VALUES (3, '{"{\"content\": \"\\\"Serious or fatal crushing injuries can occur from furniture tip over. To prevent tip over this furniture must be used with the wall attachment device(s) provided\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_handling_information_type VALUES (4, '{"{\"content\": \"\\\"Serious or fatal crushing injuries can occur from furniture tip over. To prevent tip over this furniture must be used with the wall attachment device(s) provided\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_handling_information_type VALUES (5, '{"{\"content\": \"\\\"Serious or fatal crushing injuries can occur from furniture tip over. To prevent tip over this furniture must be used with the wall attachment device(s) provided\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_handling_information_type VALUES (6, '{"{\"content\": \"\\\"Serious or fatal crushing injuries can occur from furniture tip over. To prevent tip over this furniture must be used with the wall attachment device(s) provided\\\"\", \"@languageCode\": \"en\"}"}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_handling_information_type VALUES (7, '{"{\"content\": \"\\\"Serious or fatal crushing injuries can occur from furniture tip over. To prevent tip over this furniture must be used with the wall attachment device(s) provided\\\"\", \"@languageCode\": \"en\"}"}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: trade_item_handling_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_handling_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.trade_item_handling_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:44:03.978', NULL);
INSERT INTO gdsn_dev.trade_item_handling_module_type VALUES (3, 3, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_handling_module_type VALUES (4, 4, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_handling_module_type VALUES (5, 5, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_handling_module_type VALUES (6, 6, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_handling_module_type VALUES (7, 7, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);


--
-- Data for Name: trade_item_hierarchy_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: trade_item_hierarchy_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: trade_item_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_information_type VALUES (1, 1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:54:59.611', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (3, NULL, 3, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (4, NULL, 4, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (5, NULL, 5, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (6, 3, 6, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (7, 4, 7, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (8, 5, 8, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (9, 6, 9, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (2, 2, 2, '2024-05-31 11:40:17.032', '2024-06-26 10:13:37.965', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (10, 7, 10, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (11, NULL, 11, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (12, NULL, 12, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (13, 8, 13, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (14, 9, 14, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (15, 10, 15, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (16, 11, 16, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (17, 12, 17, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (18, 13, 18, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (19, 14, 19, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (20, NULL, 20, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (21, NULL, 21, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (22, NULL, 22, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (23, NULL, 23, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (24, NULL, 24, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (57, NULL, 57, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (58, NULL, 58, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (59, NULL, 59, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (60, NULL, 60, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.trade_item_information_type VALUES (61, NULL, 61, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: trade_item_measurements_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (3, 3, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (4, 4, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (5, 5, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (6, 6, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (7, 7, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (8, 8, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (9, 9, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (10, 10, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (11, 11, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (12, 12, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (13, 13, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (14, 14, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (15, 15, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_module_type VALUES (16, 16, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: trade_item_measurements_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (1, '{"content": 822, "@measurementUnitCode": "MMT"}', '{"content": 95, "@measurementUnitCode": "MMT"}', NULL, '{"content": 563, "@measurementUnitCode": "MMT"}', NULL, '{"netWeight": {"content": 12.77989, "@measurementUnitCode": "KGM"}, "grossWeight": {"content": 13.67, "@measurementUnitCode": "KGM"}}', '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (2, '{"content": 822, "@measurementUnitCode": "MMT"}', '{"content": 95, "@measurementUnitCode": "MMT"}', NULL, '{"content": 563, "@measurementUnitCode": "MMT"}', NULL, '{"netWeight": {"content": 12.77989, "@measurementUnitCode": "KGM"}, "grossWeight": {"content": 13.67, "@measurementUnitCode": "KGM"}}', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (3, '{"content": 8570, "@measurementUnitCode": "MMT"}', '{"content": 770, "@measurementUnitCode": "MMT"}', '{"{\"content\": 5, \"@measurementUnitCode\": \"H87\"}"}', '{"content": 2620, "@measurementUnitCode": "MMT"}', NULL, '{"grossWeight": {"content": 200, "@measurementUnitCode": "KGM"}}', '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (4, '{"content": 8570, "@measurementUnitCode": "MMT"}', '{"content": 770, "@measurementUnitCode": "MMT"}', '{"{\"content\": 5, \"@measurementUnitCode\": \"H87\"}"}', '{"content": 2620, "@measurementUnitCode": "MMT"}', NULL, '{"grossWeight": {"content": 200, "@measurementUnitCode": "KGM"}}', '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (5, '{"content": 822, "@measurementUnitCode": "MMT"}', '{"content": 95, "@measurementUnitCode": "MMT"}', NULL, '{"content": 563, "@measurementUnitCode": "MMT"}', NULL, '{"netWeight": {"content": 12.77989, "@measurementUnitCode": "KGM"}, "grossWeight": {"content": 13.67, "@measurementUnitCode": "KGM"}}', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (6, '{"content": 822, "@measurementUnitCode": "MMT"}', '{"content": 95, "@measurementUnitCode": "MMT"}', NULL, '{"content": 563, "@measurementUnitCode": "MMT"}', NULL, '{"netWeight": {"content": 12.77989, "@measurementUnitCode": "KGM"}, "grossWeight": {"content": 13.67, "@measurementUnitCode": "KGM"}}', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (7, '{"content": 822, "@measurementUnitCode": "MMT"}', '{"content": 95, "@measurementUnitCode": "MMT"}', NULL, '{"content": 563, "@measurementUnitCode": "MMT"}', NULL, '{"netWeight": {"content": 12.77989, "@measurementUnitCode": "KGM"}, "grossWeight": {"content": 13.67, "@measurementUnitCode": "KGM"}}', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (8, '{"content": 822, "@measurementUnitCode": "MMT"}', '{"content": 95, "@measurementUnitCode": "MMT"}', NULL, '{"content": 563, "@measurementUnitCode": "MMT"}', NULL, '{"netWeight": {"content": 12.77989, "@measurementUnitCode": "KGM"}, "grossWeight": {"content": 13.67, "@measurementUnitCode": "KGM"}}', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (9, '{"content": 822, "@measurementUnitCode": "MMT"}', '{"content": 95, "@measurementUnitCode": "MMT"}', NULL, '{"content": 563, "@measurementUnitCode": "MMT"}', NULL, '{"netWeight": {"content": 12.77989, "@measurementUnitCode": "KGM"}, "grossWeight": {"content": 13.67, "@measurementUnitCode": "KGM"}}', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (10, '{"content": 8570, "@measurementUnitCode": "MMT"}', '{"content": 770, "@measurementUnitCode": "MMT"}', '{"{\"content\": 5, \"@measurementUnitCode\": \"H87\"}"}', '{"content": 2620, "@measurementUnitCode": "MMT"}', NULL, '{"grossWeight": {"content": 200, "@measurementUnitCode": "KGM"}}', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (11, '{"content": 9, "@measurementUnitCode": "BFT"}', '{"content": 8, "@measurementUnitCode": "AXU"}', '{"{\"content\": 5, \"@measurementUnitCode\": \"5B\"}"}', '{"content": 9, "@measurementUnitCode": "AS"}', '{"{\"content\": \"8\", \"@languageCode\": \"as\"}"}', '{"netWeight": {"content": 7, "@measurementUnitCode": "5B"}, "grossWeight": {"content": 4, "@measurementUnitCode": "D43"}}', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (12, '{"content": 9, "@measurementUnitCode": "AS"}', '{"content": 6, "@measurementUnitCode": "B"}', '{"{\"content\": 7, \"@measurementUnitCode\": \"B\"}"}', '{"content": 7, "@measurementUnitCode": "BQL"}', '{"{\"content\": \"7\", \"@languageCode\": \"ar\"}"}', '{"netWeight": {"content": 8, "@measurementUnitCode": "AXU"}, "grossWeight": {"content": 5, "@measurementUnitCode": "BFT"}}', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (13, '{"content": 8, "@measurementUnitCode": "AMP"}', '{"content": 9, "@measurementUnitCode": "AMH"}', '{"{\"content\": 9, \"@measurementUnitCode\": \"BFT\"}"}', '{"content": 8, "@measurementUnitCode": "AS"}', NULL, '{"grossWeight": {"content": 8, "@measurementUnitCode": "A11"}}', '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (14, '{"content": 89, "@measurementUnitCode": "AXU"}', '{"content": 89, "@measurementUnitCode": "AS"}', '{"{\"content\": 67, \"@measurementUnitCode\": \"D43\"}"}', '{"content": 67, "@measurementUnitCode": "BQL"}', NULL, '{"grossWeight": {"content": 56, "@measurementUnitCode": "D43"}}', '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (15, '{"content": 67, "@measurementUnitCode": "5B"}', '{"content": 78, "@measurementUnitCode": "B10"}', '{"{\"content\": 45, \"@measurementUnitCode\": \"BB\"}"}', '{"content": 89, "@measurementUnitCode": "BFT"}', NULL, '{"grossWeight": {"content": 34, "@measurementUnitCode": "5B"}}', '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.trade_item_measurements_type VALUES (16, '{"content": 89, "@measurementUnitCode": "AMH"}', '{"content": 34, "@measurementUnitCode": "B10"}', '{"{\"content\": 43, \"@measurementUnitCode\": \"E20\"}"}', '{"content": 89, "@measurementUnitCode": "D63"}', '{"{\"content\": \"hghj\", \"@languageCode\": \"ae\"}"}', '{"netWeight": {"content": 657, "@measurementUnitCode": "B10"}, "grossWeight": {"content": 76, "@measurementUnitCode": "A11"}}', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);


--
-- Data for Name: trade_item_price_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: trade_item_price_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: trade_item_stacking_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--



--
-- Data for Name: trade_item_synchronisation_dates_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (2, '2022-05-02T10:29:00Z', '2022-05-02T00:00:00Z', '2024-05-28T11:01:00Z', '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (3, '2024-06-19T06:55:00Z', '2024-06-19T06:55:00Z', '2024-06-19T06:55:00Z', '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (5, '2022-05-02T10:30:00Z', '2023-10-25T13:13:00Z', NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (4, '2022-05-02T10:30:00Z', '2023-10-25T13:13:00Z', '2024-06-20T11:21:00Z', '2024-06-19 20:03:51.594', '2024-06-20 09:21:18.195', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (6, '2022-05-02T10:29:00Z', '2022-05-02T00:00:00Z', '2024-05-28T11:01:00Z', '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (7, '2022-05-02T10:29:00Z', '2022-05-02T00:00:00Z', '2024-05-28T11:01:00Z', '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (8, '2022-05-02T10:29:00Z', '2022-05-02T00:00:00Z', '2024-05-28T11:01:00Z', '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (9, '2022-05-02T10:29:00Z', '2022-05-02T00:00:00Z', '2024-05-28T11:01:00Z', '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (10, '2022-05-02T10:29:00Z', '2022-05-02T00:00:00Z', '2024-05-28T11:01:00Z', '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (11, '2024-07-09T22:30:00Z', '2024-07-09T22:30:00Z', '2024-07-09T22:30:00Z', '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (12, '2022-05-02T10:28:00Z', '2023-10-25T13:03:00Z', '2024-07-22T15:21:00Z', '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (13, '2024-07-26T15:12:00Z', NULL, NULL, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (14, '2024-08-02T13:04:00Z', NULL, NULL, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (17, '2024-08-12T02:32:00Z', '2024-08-11T02:32:00Z', '2024-08-12T02:33:00Z', '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (18, '2024-08-12T02:56:00Z', '2024-08-12T02:56:00Z', '2024-08-12T02:56:00Z', '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (20, '2024-08-12T04:34:00Z', '2024-08-12T04:34:00Z', '2024-08-12T04:34:00Z', '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (21, '2024-08-19T05:25:00Z', '2024-08-11T22:17:00Z', '2024-08-05T22:17:00Z', '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (22, '2024-08-19T12:56:00Z', '2024-08-19T18:19:00Z', '2024-08-19T18:19:00Z', '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (23, '2024-08-22T07:47:00Z', NULL, NULL, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (24, '2024-08-22T08:16:00Z', NULL, NULL, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (25, '2024-08-22T08:56:00Z', NULL, NULL, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (26, '2024-08-22T09:22:00Z', NULL, NULL, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (27, '2024-08-22T10:13:00Z', NULL, NULL, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (60, '2024-08-22T11:28:00Z', '2024-08-22T04:24:00Z', '2024-08-22T04:24:00Z', '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (61, '2024-08-28T12:42:00Z', '2024-08-14T14:27:00Z', '2024-08-15T14:27:00Z', '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (1, '2024-08-29T07:26:00Z', '2022-05-02T00:00:00Z', '2024-05-28T11:01:00Z', '2024-05-29 08:45:00.542', '2024-08-29 07:26:34.208', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (63, '2024-08-29T10:48:00Z', '2024-08-23T12:44:00Z', '2024-08-22T12:44:00Z', '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (64, '2024-08-29T11:24:00Z', '2024-08-22T13:18:00Z', '2024-08-22T13:19:00Z', '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.trade_item_synchronisation_dates_type VALUES (65, '2024-09-01T08:52:00Z', NULL, NULL, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: trade_item_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000077', true, true, false, false, false, '{"content": "BASE_UNIT_OR_EACH"}', 1, 2, 1, 1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000053', true, true, false, false, false, '{"content": "BASE_UNIT_OR_EACH"}', 5, 4, 2, 2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000510', true, true, false, true, false, '{"content": "BASE_UNIT_OR_EACH"}', 8, 9, 4, 4, NULL, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000527', true, true, false, true, false, '{"content": "BASE_UNIT_OR_EACH"}', 11, 12, 5, 5, NULL, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000090', true, true, false, false, false, '{"content": "BASE_UNIT_OR_EACH"}', 15, 14, 6, 6, 4, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000091', true, true, false, false, false, '{"content": "BASE_UNIT_OR_EACH"}', 18, 17, 7, 7, 5, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000098', true, true, false, false, false, '{"content": "BASE_UNIT_OR_EACH"}', 21, 20, 8, 8, 6, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000089', true, true, false, false, false, '{"content": "BASE_UNIT_OR_EACH"}', 24, 23, 9, 9, 7, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000067', true, true, false, false, false, '{"content": "BASE_UNIT_OR_EACH"}', 27, 26, 10, 10, 8, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL, NULL);
INSERT INTO gdsn_dev.trade_item_type VALUES ('07315120000070', false, false, false, false, true, '{}', 29, NULL, 11, 11, 9, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL, '{"{\"content\": \"ART56\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('07315120000155', true, true, false, true, false, '{"content": "BASE_UNIT_OR_EACH"}', 31, 30, 12, 12, NULL, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL, '{"{\"content\": \"ART60447173\", \"@additionalTradeItemIdentificationTypeCode\": \"SUPPLIER_ASSIGNED\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000428', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 32, NULL, 13, 13, 10, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL, '{"{\"content\": \"ART60447173\", \"@additionalTradeItemIdentificationTypeCode\": \"SUPPLIER_ASSIGNED\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000060', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 33, NULL, 14, 14, NULL, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL, '{"{\"content\": \"ART60447173\", \"@additionalTradeItemIdentificationTypeCode\": \"SUPPLIER_ASSIGNED\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000268', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 36, NULL, 17, 17, 11, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL, '{"{\"content\": \"ART14567853\", \"@additionalTradeItemIdentificationTypeCode\": \"GDPA\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000282', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 37, NULL, 18, 18, 12, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL, '{"{\"content\": \"ART79075433\", \"@additionalTradeItemIdentificationTypeCode\": \"BW_BOMRA\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000237', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 39, NULL, 20, 20, 14, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL, '{"{\"content\": \"ART56789234\", \"@additionalTradeItemIdentificationTypeCode\": \"GDPA\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('12378954312785', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 40, NULL, 21, 21, 15, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL, '{"{\"content\": \"ART14567853\", \"@additionalTradeItemIdentificationTypeCode\": \"ARTG_ID\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000329', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 42, 41, 22, 22, 16, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL, '{"{\"content\": \"ART56789586\", \"@additionalTradeItemIdentificationTypeCode\": \"MSD\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000404', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 43, NULL, 23, 23, 17, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL, '{"{\"content\": \"ART67899532\", \"@additionalTradeItemIdentificationTypeCode\": \"BW_BOMRA\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000336', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 44, NULL, 24, 24, NULL, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL, '{"{\"content\": \"ART14567859\", \"@additionalTradeItemIdentificationTypeCode\": \"DGPML_BJ\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000378', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 45, NULL, 25, 25, NULL, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL, '{"{\"content\": \"ART14567859\", \"@additionalTradeItemIdentificationTypeCode\": \"MOH_BW\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000678', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 46, NULL, 26, 26, NULL, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL, '{"{\"content\": \"ART14567859\", \"@additionalTradeItemIdentificationTypeCode\": \"MOH_BW\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000789', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 47, NULL, 27, 27, NULL, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL, '{"{\"content\": \"ART14567859\", \"@additionalTradeItemIdentificationTypeCode\": \"BJ_DPMED\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000345', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 80, NULL, 60, 60, NULL, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL, '{"{\"content\": \"ART14567859\", \"@additionalTradeItemIdentificationTypeCode\": \"GDPA\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110001036', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 82, 81, 61, 61, NULL, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL, '{"{\"content\": \"ART12377709\", \"@additionalTradeItemIdentificationTypeCode\": \"ANVISA\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110001067', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 86, NULL, 63, 63, NULL, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL, '{"{\"content\": \"ART12388887\", \"@additionalTradeItemIdentificationTypeCode\": \"BW_BOMRA\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110001074', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 88, 87, 64, 64, NULL, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL, '{"{\"content\": \"ART12366657\", \"@additionalTradeItemIdentificationTypeCode\": \"AIG\"}"}');
INSERT INTO gdsn_dev.trade_item_type VALUES ('01111110000961', false, false, false, false, true, '{"content": "BASE_UNIT_OR_EACH"}', 89, NULL, 65, 65, NULL, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL, '{"{\"content\": \"ART14567856\", \"@additionalTradeItemIdentificationTypeCode\": \"BE_FAMHP_NN\"}"}');


--
-- Data for Name: variable_trade_item_information_module_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (1, 1, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (2, 2, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (3, 3, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (4, 4, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (5, 5, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (6, 6, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (7, 7, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (8, 8, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (9, 9, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (10, 10, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (11, 11, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (12, 12, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (13, 13, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (14, 14, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (15, 15, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (16, 16, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (17, 17, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (18, 18, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (19, 19, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (20, 20, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (21, 21, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (22, 22, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (23, 23, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (24, 24, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (57, 57, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (58, 58, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (59, 59, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (60, 60, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_module_type VALUES (61, 61, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Data for Name: variable_trade_item_information_type; Type: TABLE DATA; Schema: gdsn_dev; Owner: -
--

INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (1, false, '2024-05-29 08:45:00.542', '2024-05-29 08:45:00.542', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (2, false, '2024-05-31 11:40:17.032', '2024-05-31 11:40:17.032', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (3, false, '2024-06-19 09:08:10.874', '2024-06-19 09:08:10.874', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (4, false, '2024-06-19 20:03:51.594', '2024-06-19 20:03:51.594', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (5, false, '2024-06-19 20:09:32.998', '2024-06-19 20:09:32.998', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (6, false, '2024-06-20 10:41:07.528', '2024-06-20 10:41:07.528', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (7, false, '2024-06-20 10:54:28.758', '2024-06-20 10:54:28.758', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (8, false, '2024-06-20 10:55:16.13', '2024-06-20 10:55:16.13', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (9, false, '2024-06-21 06:52:35.808', '2024-06-21 06:52:35.808', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (10, false, '2024-07-09 07:20:27.915', '2024-07-09 07:20:27.915', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (11, false, '2024-07-10 05:32:15.832', '2024-07-10 05:32:15.832', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (12, false, '2024-07-22 15:06:01.081', '2024-07-22 15:06:01.081', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (13, false, '2024-07-26 13:13:49.889', '2024-07-26 13:13:49.889', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (14, false, '2024-08-02 11:04:48.915', '2024-08-02 11:04:48.915', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (15, false, '2024-08-12 09:47:40.6', '2024-08-12 09:47:40.6', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (16, false, '2024-08-12 09:58:53.412', '2024-08-12 09:58:53.412', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (17, false, '2024-08-12 11:35:07.076', '2024-08-12 11:35:07.076', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (18, false, '2024-08-19 05:25:48.194', '2024-08-19 05:25:48.194', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (19, false, '2024-08-19 12:56:29.286', '2024-08-19 12:56:29.286', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (20, false, '2024-08-22 07:47:36.11', '2024-08-22 07:47:36.11', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (21, false, '2024-08-22 08:16:19.465', '2024-08-22 08:16:19.465', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (22, false, '2024-08-22 08:56:10.592', '2024-08-22 08:56:10.592', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (23, false, '2024-08-22 09:22:42.828', '2024-08-22 09:22:42.828', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (24, false, '2024-08-22 10:13:50.124', '2024-08-22 10:13:50.124', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (57, false, '2024-08-22 11:28:59.077', '2024-08-22 11:28:59.077', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (58, false, '2024-08-28 12:43:04.958', '2024-08-28 12:43:04.958', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (59, false, '2024-08-29 10:48:27.84', '2024-08-29 10:48:27.84', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (60, false, '2024-08-29 11:24:35.52', '2024-08-29 11:24:35.52', NULL);
INSERT INTO gdsn_dev.variable_trade_item_information_type VALUES (61, false, '2024-09-01 08:52:29.697', '2024-09-01 08:52:29.697', NULL);


--
-- Name: brand_name_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.brand_name_information_type_id_seq', 54, true);


--
-- Name: certification_information_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.certification_information_module_type_id_seq', 10, true);


--
-- Name: certification_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.certification_information_type_id_seq', 10, true);


--
-- Name: certification_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.certification_type_id_seq', 10, true);


--
-- Name: child_trade_item_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.child_trade_item_type_id_seq', 16, true);


--
-- Name: colour_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.colour_type_id_seq', 7, true);


--
-- Name: component_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.component_information_type_id_seq', 13, true);


--
-- Name: consumer_instructions_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.consumer_instructions_module_type_id_seq', 7, true);


--
-- Name: consumer_instructions_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.consumer_instructions_type_id_seq', 7, true);


--
-- Name: consumer_warning_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.consumer_warning_information_type_id_seq', 7, true);


--
-- Name: data_carrier_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.data_carrier_type_id_seq', 10, true);


--
-- Name: delivery_purchasing_information_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.delivery_purchasing_information_module_type_id_seq', 17, true);


--
-- Name: delivery_purchasing_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.delivery_purchasing_information_type_id_seq', 17, true);


--
-- Name: durable_goods_characteristics_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.durable_goods_characteristics_module_type_id_seq', 61, true);


--
-- Name: durable_goods_characteristics_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.durable_goods_characteristics_type_id_seq', 61, true);


--
-- Name: duty_fee_tax_information_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.duty_fee_tax_information_module_type_id_seq', 16, true);


--
-- Name: duty_fee_tax_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.duty_fee_tax_information_type_id_seq', 16, true);


--
-- Name: duty_fee_tax_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.duty_fee_tax_type_id_seq', 16, true);


--
-- Name: extension_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.extension_type_id_seq', 61, true);


--
-- Name: gdsn_trade_item_classification_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.gdsn_trade_item_classification_type_id_seq', 65, true);


--
-- Name: import_classification_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.import_classification_type_id_seq', 1, false);


--
-- Name: individual_packaging_component_level_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.individual_packaging_component_level_type_id_seq', 1, false);


--
-- Name: marketing_information_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.marketing_information_module_type_id_seq', 7, true);


--
-- Name: marketing_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.marketing_information_type_id_seq', 7, true);


--
-- Name: material_composition_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.material_composition_type_id_seq', 7, true);


--
-- Name: material_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.material_module_type_id_seq', 7, true);


--
-- Name: material_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.material_type_id_seq', 7, true);


--
-- Name: next_lower_level_trade_item_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.next_lower_level_trade_item_information_type_id_seq', 17, true);


--
-- Name: packaging_dimension_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.packaging_dimension_type_id_seq', 2, true);


--
-- Name: packaging_information_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.packaging_information_module_type_id_seq', 16, true);


--
-- Name: packaging_marking_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.packaging_marking_module_type_id_seq', 7, true);


--
-- Name: packaging_marking_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.packaging_marking_type_id_seq', 7, true);


--
-- Name: packaging_material_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.packaging_material_type_id_seq', 8, true);


--
-- Name: packaging_sustainability_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.packaging_sustainability_module_type_id_seq', 1, false);


--
-- Name: packaging_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.packaging_type_id_seq', 16, true);


--
-- Name: party_in_role_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.party_in_role_type_id_seq', 89, true);


--
-- Name: place_of_item_activity_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.place_of_item_activity_module_type_id_seq', 1, false);


--
-- Name: place_of_product_activity_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.place_of_product_activity_type_id_seq', 1, false);


--
-- Name: product_characteristics_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.product_characteristics_module_type_id_seq', 1, false);


--
-- Name: product_characteristics_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.product_characteristics_type_id_seq', 1, false);


--
-- Name: referenced_file_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.referenced_file_information_type_id_seq', 7, true);


--
-- Name: referenced_trade_item_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.referenced_trade_item_type_id_seq', 6, true);


--
-- Name: regulated_trade_item_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.regulated_trade_item_module_type_id_seq', 7, true);


--
-- Name: regulatory_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.regulatory_information_type_id_seq', 7, true);


--
-- Name: sales_information_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.sales_information_module_type_id_seq', 1, false);


--
-- Name: sustainability_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.sustainability_information_type_id_seq', 7, true);


--
-- Name: sustainability_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.sustainability_module_type_id_seq', 7, true);


--
-- Name: target_market_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.target_market_type_id_seq', 64, true);


--
-- Name: trade_item_components_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_components_type_id_seq', 14, true);


--
-- Name: trade_item_contact_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_contact_information_type_id_seq', 7, true);


--
-- Name: trade_item_data_carrier_and_identification_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_data_carrier_and_identification_module_type_id_seq', 10, true);


--
-- Name: trade_item_description_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_description_information_type_id_seq', 57, true);


--
-- Name: trade_item_description_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_description_module_type_id_seq', 57, true);


--
-- Name: trade_item_handling_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_handling_information_type_id_seq', 7, true);


--
-- Name: trade_item_handling_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_handling_module_type_id_seq', 7, true);


--
-- Name: trade_item_hierarchy_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_hierarchy_module_type_id_seq', 1, false);


--
-- Name: trade_item_hierarchy_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_hierarchy_type_id_seq', 1, false);


--
-- Name: trade_item_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_information_type_id_seq', 61, true);


--
-- Name: trade_item_measurements_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_measurements_module_type_id_seq', 16, true);


--
-- Name: trade_item_measurements_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_measurements_type_id_seq', 16, true);


--
-- Name: trade_item_price_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_price_information_type_id_seq', 1, false);


--
-- Name: trade_item_price_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_price_type_id_seq', 1, false);


--
-- Name: trade_item_stacking_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_stacking_type_id_seq', 1, false);


--
-- Name: trade_item_synchronisation_dates_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.trade_item_synchronisation_dates_type_id_seq', 65, true);


--
-- Name: variable_trade_item_information_module_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.variable_trade_item_information_module_type_id_seq', 61, true);


--
-- Name: variable_trade_item_information_type_id_seq; Type: SEQUENCE SET; Schema: gdsn_dev; Owner: -
--

SELECT pg_catalog.setval('gdsn_dev.variable_trade_item_information_type_id_seq', 61, true);


--
-- Name: brand_name_information_type brand_name_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.brand_name_information_type
    ADD CONSTRAINT brand_name_information_type_pkey PRIMARY KEY (id);


--
-- Name: certification_information_module_type certification_information_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.certification_information_module_type
    ADD CONSTRAINT certification_information_module_type_pkey PRIMARY KEY (id);


--
-- Name: certification_information_type certification_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.certification_information_type
    ADD CONSTRAINT certification_information_type_pkey PRIMARY KEY (id);


--
-- Name: certification_type certification_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.certification_type
    ADD CONSTRAINT certification_type_pkey PRIMARY KEY (id);


--
-- Name: child_trade_item_type child_trade_item_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.child_trade_item_type
    ADD CONSTRAINT child_trade_item_type_pkey PRIMARY KEY (id);


--
-- Name: colour_type colour_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.colour_type
    ADD CONSTRAINT colour_type_pkey PRIMARY KEY (id);


--
-- Name: component_information_type component_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.component_information_type
    ADD CONSTRAINT component_information_type_pkey PRIMARY KEY (id);


--
-- Name: consumer_instructions_module_type consumer_instructions_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.consumer_instructions_module_type
    ADD CONSTRAINT consumer_instructions_module_type_pkey PRIMARY KEY (id);


--
-- Name: consumer_instructions_type consumer_instructions_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.consumer_instructions_type
    ADD CONSTRAINT consumer_instructions_type_pkey PRIMARY KEY (id);


--
-- Name: consumer_warning_information_type consumer_warning_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.consumer_warning_information_type
    ADD CONSTRAINT consumer_warning_information_type_pkey PRIMARY KEY (id);


--
-- Name: data_carrier_type data_carrier_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.data_carrier_type
    ADD CONSTRAINT data_carrier_type_pkey PRIMARY KEY (id);


--
-- Name: delivery_purchasing_information_module_type delivery_purchasing_information_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.delivery_purchasing_information_module_type
    ADD CONSTRAINT delivery_purchasing_information_module_type_pkey PRIMARY KEY (id);


--
-- Name: delivery_purchasing_information_type delivery_purchasing_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.delivery_purchasing_information_type
    ADD CONSTRAINT delivery_purchasing_information_type_pkey PRIMARY KEY (id);


--
-- Name: durable_goods_characteristics_module_type durable_goods_characteristics_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.durable_goods_characteristics_module_type
    ADD CONSTRAINT durable_goods_characteristics_module_type_pkey PRIMARY KEY (id);


--
-- Name: durable_goods_characteristics_type durable_goods_characteristics_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.durable_goods_characteristics_type
    ADD CONSTRAINT durable_goods_characteristics_type_pkey PRIMARY KEY (id);


--
-- Name: duty_fee_tax_information_module_type duty_fee_tax_information_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.duty_fee_tax_information_module_type
    ADD CONSTRAINT duty_fee_tax_information_module_type_pkey PRIMARY KEY (id);


--
-- Name: duty_fee_tax_information_type duty_fee_tax_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.duty_fee_tax_information_type
    ADD CONSTRAINT duty_fee_tax_information_type_pkey PRIMARY KEY (id);


--
-- Name: duty_fee_tax_type duty_fee_tax_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.duty_fee_tax_type
    ADD CONSTRAINT duty_fee_tax_type_pkey PRIMARY KEY (id);


--
-- Name: extension_type extension_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT extension_type_pkey PRIMARY KEY (id);


--
-- Name: gdsn_trade_item_classification_type gdsn_trade_item_classification_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.gdsn_trade_item_classification_type
    ADD CONSTRAINT gdsn_trade_item_classification_type_pkey PRIMARY KEY (id);


--
-- Name: import_classification_type import_classification_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.import_classification_type
    ADD CONSTRAINT import_classification_type_pkey PRIMARY KEY (id);


--
-- Name: individual_packaging_component_level_type individual_packaging_component_level_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.individual_packaging_component_level_type
    ADD CONSTRAINT individual_packaging_component_level_type_pkey PRIMARY KEY (id);


--
-- Name: marketing_information_module_type marketing_information_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.marketing_information_module_type
    ADD CONSTRAINT marketing_information_module_type_pkey PRIMARY KEY (id);


--
-- Name: marketing_information_type marketing_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.marketing_information_type
    ADD CONSTRAINT marketing_information_type_pkey PRIMARY KEY (id);


--
-- Name: material_composition_type material_composition_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.material_composition_type
    ADD CONSTRAINT material_composition_type_pkey PRIMARY KEY (id);


--
-- Name: material_module_type material_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.material_module_type
    ADD CONSTRAINT material_module_type_pkey PRIMARY KEY (id);


--
-- Name: material_type material_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.material_type
    ADD CONSTRAINT material_type_pkey PRIMARY KEY (id);


--
-- Name: next_lower_level_trade_item_information_type next_lower_level_trade_item_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.next_lower_level_trade_item_information_type
    ADD CONSTRAINT next_lower_level_trade_item_information_type_pkey PRIMARY KEY (id);


--
-- Name: packaging_dimension_type packaging_dimension_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_dimension_type
    ADD CONSTRAINT packaging_dimension_type_pkey PRIMARY KEY (id);


--
-- Name: packaging_information_module_type packaging_information_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_information_module_type
    ADD CONSTRAINT packaging_information_module_type_pkey PRIMARY KEY (id);


--
-- Name: packaging_marking_module_type packaging_marking_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_marking_module_type
    ADD CONSTRAINT packaging_marking_module_type_pkey PRIMARY KEY (id);


--
-- Name: packaging_marking_type packaging_marking_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_marking_type
    ADD CONSTRAINT packaging_marking_type_pkey PRIMARY KEY (id);


--
-- Name: packaging_material_type packaging_material_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_material_type
    ADD CONSTRAINT packaging_material_type_pkey PRIMARY KEY (id);


--
-- Name: packaging_sustainability_module_type packaging_sustainability_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_sustainability_module_type
    ADD CONSTRAINT packaging_sustainability_module_type_pkey PRIMARY KEY (id);


--
-- Name: packaging_type packaging_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_type
    ADD CONSTRAINT packaging_type_pkey PRIMARY KEY (id);


--
-- Name: party_in_role_type party_in_role_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.party_in_role_type
    ADD CONSTRAINT party_in_role_type_pkey PRIMARY KEY (id);


--
-- Name: place_of_item_activity_module_type place_of_item_activity_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.place_of_item_activity_module_type
    ADD CONSTRAINT place_of_item_activity_module_type_pkey PRIMARY KEY (id);


--
-- Name: place_of_product_activity_type place_of_product_activity_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.place_of_product_activity_type
    ADD CONSTRAINT place_of_product_activity_type_pkey PRIMARY KEY (id);


--
-- Name: product_characteristics_module_type product_characteristics_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.product_characteristics_module_type
    ADD CONSTRAINT product_characteristics_module_type_pkey PRIMARY KEY (id);


--
-- Name: product_characteristics_type product_characteristics_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.product_characteristics_type
    ADD CONSTRAINT product_characteristics_type_pkey PRIMARY KEY (id);


--
-- Name: referenced_file_information_type referenced_file_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.referenced_file_information_type
    ADD CONSTRAINT referenced_file_information_type_pkey PRIMARY KEY (id);


--
-- Name: referenced_trade_item_type referenced_trade_item_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.referenced_trade_item_type
    ADD CONSTRAINT referenced_trade_item_type_pkey PRIMARY KEY (id);


--
-- Name: regulated_trade_item_module_type regulated_trade_item_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.regulated_trade_item_module_type
    ADD CONSTRAINT regulated_trade_item_module_type_pkey PRIMARY KEY (id);


--
-- Name: regulatory_information_type regulatory_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.regulatory_information_type
    ADD CONSTRAINT regulatory_information_type_pkey PRIMARY KEY (id);


--
-- Name: sales_information_module_type sales_information_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sales_information_module_type
    ADD CONSTRAINT sales_information_module_type_pkey PRIMARY KEY (id);


--
-- Name: sustainability_information_type sustainability_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sustainability_information_type
    ADD CONSTRAINT sustainability_information_type_pkey PRIMARY KEY (id);


--
-- Name: sustainability_module_type sustainability_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sustainability_module_type
    ADD CONSTRAINT sustainability_module_type_pkey PRIMARY KEY (id);


--
-- Name: target_market_type target_market_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.target_market_type
    ADD CONSTRAINT target_market_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_components_type trade_item_components_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_components_type
    ADD CONSTRAINT trade_item_components_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_contact_information_type trade_item_contact_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_contact_information_type
    ADD CONSTRAINT trade_item_contact_information_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_data_carrier_and_identification_module_type trade_item_data_carrier_and_identification_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_data_carrier_and_identification_module_type
    ADD CONSTRAINT trade_item_data_carrier_and_identification_module_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_description_information_type trade_item_description_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_description_information_type
    ADD CONSTRAINT trade_item_description_information_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_description_module_type trade_item_description_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_description_module_type
    ADD CONSTRAINT trade_item_description_module_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_handling_information_type trade_item_handling_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_handling_information_type
    ADD CONSTRAINT trade_item_handling_information_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_handling_module_type trade_item_handling_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_handling_module_type
    ADD CONSTRAINT trade_item_handling_module_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_hierarchy_module_type trade_item_hierarchy_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_hierarchy_module_type
    ADD CONSTRAINT trade_item_hierarchy_module_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_hierarchy_type trade_item_hierarchy_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_hierarchy_type
    ADD CONSTRAINT trade_item_hierarchy_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_information_type trade_item_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_information_type
    ADD CONSTRAINT trade_item_information_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_measurements_module_type trade_item_measurements_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_measurements_module_type
    ADD CONSTRAINT trade_item_measurements_module_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_measurements_type trade_item_measurements_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_measurements_type
    ADD CONSTRAINT trade_item_measurements_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_price_information_type trade_item_price_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_price_information_type
    ADD CONSTRAINT trade_item_price_information_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_price_type trade_item_price_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_price_type
    ADD CONSTRAINT trade_item_price_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_stacking_type trade_item_stacking_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_stacking_type
    ADD CONSTRAINT trade_item_stacking_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_synchronisation_dates_type trade_item_synchronisation_dates_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_synchronisation_dates_type
    ADD CONSTRAINT trade_item_synchronisation_dates_type_pkey PRIMARY KEY (id);


--
-- Name: trade_item_type trade_item_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_type
    ADD CONSTRAINT trade_item_type_pkey PRIMARY KEY (gtin);


--
-- Name: variable_trade_item_information_module_type variable_trade_item_information_module_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.variable_trade_item_information_module_type
    ADD CONSTRAINT variable_trade_item_information_module_type_pkey PRIMARY KEY (id);


--
-- Name: variable_trade_item_information_type variable_trade_item_information_type_pkey; Type: CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.variable_trade_item_information_type
    ADD CONSTRAINT variable_trade_item_information_type_pkey PRIMARY KEY (id);


--
-- Name: _CataloguePrice_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_CataloguePrice_AB_unique" ON gdsn_dev."_CataloguePrice" USING btree ("A", "B");


--
-- Name: _CataloguePrice_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_CataloguePrice_B_index" ON gdsn_dev."_CataloguePrice" USING btree ("B");


--
-- Name: _CertificationInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_CertificationInformation_AB_unique" ON gdsn_dev."_CertificationInformation" USING btree ("A", "B");


--
-- Name: _CertificationInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_CertificationInformation_B_index" ON gdsn_dev."_CertificationInformation" USING btree ("B");


--
-- Name: _Certification_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_Certification_AB_unique" ON gdsn_dev."_Certification" USING btree ("A", "B");


--
-- Name: _Certification_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_Certification_B_index" ON gdsn_dev."_Certification" USING btree ("B");


--
-- Name: _ChildTradeItem_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ChildTradeItem_AB_unique" ON gdsn_dev."_ChildTradeItem" USING btree ("A", "B");


--
-- Name: _ChildTradeItem_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ChildTradeItem_B_index" ON gdsn_dev."_ChildTradeItem" USING btree ("B");


--
-- Name: _Colour_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_Colour_AB_unique" ON gdsn_dev."_Colour" USING btree ("A", "B");


--
-- Name: _Colour_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_Colour_B_index" ON gdsn_dev."_Colour" USING btree ("B");


--
-- Name: _ComponentInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ComponentInformation_AB_unique" ON gdsn_dev."_ComponentInformation" USING btree ("A", "B");


--
-- Name: _ComponentInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ComponentInformation_B_index" ON gdsn_dev."_ComponentInformation" USING btree ("B");


--
-- Name: _ConsumerWarningInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ConsumerWarningInformation_AB_unique" ON gdsn_dev."_ConsumerWarningInformation" USING btree ("A", "B");


--
-- Name: _ConsumerWarningInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ConsumerWarningInformation_B_index" ON gdsn_dev."_ConsumerWarningInformation" USING btree ("B");


--
-- Name: _DataCarrier_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_DataCarrier_AB_unique" ON gdsn_dev."_DataCarrier" USING btree ("A", "B");


--
-- Name: _DataCarrier_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_DataCarrier_B_index" ON gdsn_dev."_DataCarrier" USING btree ("B");


--
-- Name: _DutyFeeTaxInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_DutyFeeTaxInformation_AB_unique" ON gdsn_dev."_DutyFeeTaxInformation" USING btree ("A", "B");


--
-- Name: _DutyFeeTaxInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_DutyFeeTaxInformation_B_index" ON gdsn_dev."_DutyFeeTaxInformation" USING btree ("B");


--
-- Name: _DutyFeeTax_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_DutyFeeTax_AB_unique" ON gdsn_dev."_DutyFeeTax" USING btree ("A", "B");


--
-- Name: _DutyFeeTax_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_DutyFeeTax_B_index" ON gdsn_dev."_DutyFeeTax" USING btree ("B");


--
-- Name: _ImportClassification_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ImportClassification_AB_unique" ON gdsn_dev."_ImportClassification" USING btree ("A", "B");


--
-- Name: _ImportClassification_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ImportClassification_B_index" ON gdsn_dev."_ImportClassification" USING btree ("B");


--
-- Name: _IndividualPackagingComponentLevel_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_IndividualPackagingComponentLevel_AB_unique" ON gdsn_dev."_IndividualPackagingComponentLevel" USING btree ("A", "B");


--
-- Name: _IndividualPackagingComponentLevel_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_IndividualPackagingComponentLevel_B_index" ON gdsn_dev."_IndividualPackagingComponentLevel" USING btree ("B");


--
-- Name: _ManufacturerOfTradeItem_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ManufacturerOfTradeItem_AB_unique" ON gdsn_dev."_ManufacturerOfTradeItem" USING btree ("A", "B");


--
-- Name: _ManufacturerOfTradeItem_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ManufacturerOfTradeItem_B_index" ON gdsn_dev."_ManufacturerOfTradeItem" USING btree ("B");


--
-- Name: _MaterialComposition_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_MaterialComposition_AB_unique" ON gdsn_dev."_MaterialComposition" USING btree ("A", "B");


--
-- Name: _MaterialComposition_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_MaterialComposition_B_index" ON gdsn_dev."_MaterialComposition" USING btree ("B");


--
-- Name: _Material_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_Material_AB_unique" ON gdsn_dev."_Material" USING btree ("A", "B");


--
-- Name: _Material_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_Material_B_index" ON gdsn_dev."_Material" USING btree ("B");


--
-- Name: _PackagingMaterial_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_PackagingMaterial_AB_unique" ON gdsn_dev."_PackagingMaterial" USING btree ("A", "B");


--
-- Name: _PackagingMaterial_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_PackagingMaterial_B_index" ON gdsn_dev."_PackagingMaterial" USING btree ("B");


--
-- Name: _Packaging_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_Packaging_AB_unique" ON gdsn_dev."_Packaging" USING btree ("A", "B");


--
-- Name: _Packaging_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_Packaging_B_index" ON gdsn_dev."_Packaging" USING btree ("B");


--
-- Name: _ProductCharacteristics_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ProductCharacteristics_AB_unique" ON gdsn_dev."_ProductCharacteristics" USING btree ("A", "B");


--
-- Name: _ProductCharacteristics_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ProductCharacteristics_B_index" ON gdsn_dev."_ProductCharacteristics" USING btree ("B");


--
-- Name: _ReferencedFileInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ReferencedFileInformation_AB_unique" ON gdsn_dev."_ReferencedFileInformation" USING btree ("A", "B");


--
-- Name: _ReferencedFileInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ReferencedFileInformation_B_index" ON gdsn_dev."_ReferencedFileInformation" USING btree ("B");


--
-- Name: _ReferencedTradeItem_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_ReferencedTradeItem_AB_unique" ON gdsn_dev."_ReferencedTradeItem" USING btree ("A", "B");


--
-- Name: _ReferencedTradeItem_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_ReferencedTradeItem_B_index" ON gdsn_dev."_ReferencedTradeItem" USING btree ("B");


--
-- Name: _RegulatoryInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_RegulatoryInformation_AB_unique" ON gdsn_dev."_RegulatoryInformation" USING btree ("A", "B");


--
-- Name: _RegulatoryInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_RegulatoryInformation_B_index" ON gdsn_dev."_RegulatoryInformation" USING btree ("B");


--
-- Name: _TargetMarket_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_TargetMarket_AB_unique" ON gdsn_dev."_TargetMarket" USING btree ("A", "B");


--
-- Name: _TargetMarket_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_TargetMarket_B_index" ON gdsn_dev."_TargetMarket" USING btree ("B");


--
-- Name: _TradeItemContactInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_TradeItemContactInformation_AB_unique" ON gdsn_dev."_TradeItemContactInformation" USING btree ("A", "B");


--
-- Name: _TradeItemContactInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_TradeItemContactInformation_B_index" ON gdsn_dev."_TradeItemContactInformation" USING btree ("B");


--
-- Name: _TradeItemInformation_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_TradeItemInformation_AB_unique" ON gdsn_dev."_TradeItemInformation" USING btree ("A", "B");


--
-- Name: _TradeItemInformation_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_TradeItemInformation_B_index" ON gdsn_dev."_TradeItemInformation" USING btree ("B");


--
-- Name: _TradeItemStacking_AB_unique; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX "_TradeItemStacking_AB_unique" ON gdsn_dev."_TradeItemStacking" USING btree ("A", "B");


--
-- Name: _TradeItemStacking_B_index; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE INDEX "_TradeItemStacking_B_index" ON gdsn_dev."_TradeItemStacking" USING btree ("B");


--
-- Name: consumer_instructions_module_type_consumer_instructions_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX consumer_instructions_module_type_consumer_instructions_id_key ON gdsn_dev.consumer_instructions_module_type USING btree (consumer_instructions_id);


--
-- Name: delivery_purchasing_information_module_type_deli_purc_info__key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX delivery_purchasing_information_module_type_deli_purc_info__key ON gdsn_dev.delivery_purchasing_information_module_type USING btree (deli_purc_info_id);


--
-- Name: durable_goods_characteristics_module_type_dura_good_char_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX durable_goods_characteristics_module_type_dura_good_char_id_key ON gdsn_dev.durable_goods_characteristics_module_type USING btree (dura_good_char_id);


--
-- Name: extension_type_cert_info_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_cert_info_modu_id_key ON gdsn_dev.extension_type USING btree (cert_info_modu_id);


--
-- Name: extension_type_cons_inst_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_cons_inst_modu_id_key ON gdsn_dev.extension_type USING btree (cons_inst_modu_id);


--
-- Name: extension_type_deli_purc_info_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_deli_purc_info_modu_id_key ON gdsn_dev.extension_type USING btree (deli_purc_info_modu_id);


--
-- Name: extension_type_dura_good_char_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_dura_good_char_modu_id_key ON gdsn_dev.extension_type USING btree (dura_good_char_modu_id);


--
-- Name: extension_type_duty_fee_tax_info_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_duty_fee_tax_info_modu_id_key ON gdsn_dev.extension_type USING btree (duty_fee_tax_info_modu_id);


--
-- Name: extension_type_mark_info_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_mark_info_modu_id_key ON gdsn_dev.extension_type USING btree (mark_info_modu_id);


--
-- Name: extension_type_material_module_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_material_module_id_key ON gdsn_dev.extension_type USING btree (material_module_id);


--
-- Name: extension_type_pack_info_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_pack_info_modu_id_key ON gdsn_dev.extension_type USING btree (pack_info_modu_id);


--
-- Name: extension_type_pack_sust_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_pack_sust_modu_id_key ON gdsn_dev.extension_type USING btree (pack_sust_modu_id);


--
-- Name: extension_type_packaging_marking_module_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_packaging_marking_module_id_key ON gdsn_dev.extension_type USING btree (packaging_marking_module_id);


--
-- Name: extension_type_plac_of_item_acti_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_plac_of_item_acti_modu_id_key ON gdsn_dev.extension_type USING btree (plac_of_item_acti_modu_id);


--
-- Name: extension_type_prod_char_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_prod_char_modu_id_key ON gdsn_dev.extension_type USING btree (prod_char_modu_id);


--
-- Name: extension_type_regu_trad_item_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_regu_trad_item_modu_id_key ON gdsn_dev.extension_type USING btree (regu_trad_item_modu_id);


--
-- Name: extension_type_sales_information_module_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_sales_information_module_id_key ON gdsn_dev.extension_type USING btree (sales_information_module_id);


--
-- Name: extension_type_sustainability_module_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_sustainability_module_id_key ON gdsn_dev.extension_type USING btree (sustainability_module_id);


--
-- Name: extension_type_trad_item_data_carr_and_iden_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_trad_item_data_carr_and_iden_modu_id_key ON gdsn_dev.extension_type USING btree (trad_item_data_carr_and_iden_modu_id);


--
-- Name: extension_type_trad_item_desc_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_trad_item_desc_modu_id_key ON gdsn_dev.extension_type USING btree (trad_item_desc_modu_id);


--
-- Name: extension_type_trad_item_hier_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_trad_item_hier_modu_id_key ON gdsn_dev.extension_type USING btree (trad_item_hier_modu_id);


--
-- Name: extension_type_trad_item_meas_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_trad_item_meas_modu_id_key ON gdsn_dev.extension_type USING btree (trad_item_meas_modu_id);


--
-- Name: extension_type_trade_item_handling_module_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_trade_item_handling_module_id_key ON gdsn_dev.extension_type USING btree (trade_item_handling_module_id);


--
-- Name: extension_type_vari_trad_item_info_modu_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX extension_type_vari_trad_item_info_modu_id_key ON gdsn_dev.extension_type USING btree (vari_trad_item_info_modu_id);


--
-- Name: marketing_information_module_type_marketing_information_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX marketing_information_module_type_marketing_information_id_key ON gdsn_dev.marketing_information_module_type USING btree (marketing_information_id);


--
-- Name: packaging_marking_module_type_packaging_marking_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX packaging_marking_module_type_packaging_marking_id_key ON gdsn_dev.packaging_marking_module_type USING btree (packaging_marking_id);


--
-- Name: packaging_type_packaging_dimension_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX packaging_type_packaging_dimension_id_key ON gdsn_dev.packaging_type USING btree (packaging_dimension_id);


--
-- Name: place_of_item_activity_module_type_place_of_product_activit_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX place_of_item_activity_module_type_place_of_product_activit_key ON gdsn_dev.place_of_item_activity_module_type USING btree (place_of_product_activity_id);


--
-- Name: sales_information_module_type_trad_item_pric_info_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX sales_information_module_type_trad_item_pric_info_id_key ON gdsn_dev.sales_information_module_type USING btree (trad_item_pric_info_id);


--
-- Name: sustainability_module_type_sust_info_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX sustainability_module_type_sust_info_id_key ON gdsn_dev.sustainability_module_type USING btree (sust_info_id);


--
-- Name: trade_item_description_information_type_brand_name_informat_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_description_information_type_brand_name_informat_key ON gdsn_dev.trade_item_description_information_type USING btree (brand_name_information_id);


--
-- Name: trade_item_description_module_type_trad_item_desc_info_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_description_module_type_trad_item_desc_info_id_key ON gdsn_dev.trade_item_description_module_type USING btree (trad_item_desc_info_id);


--
-- Name: trade_item_handling_module_type_trad_item_hand_info_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_handling_module_type_trad_item_hand_info_id_key ON gdsn_dev.trade_item_handling_module_type USING btree (trad_item_hand_info_id);


--
-- Name: trade_item_hierarchy_module_type_trade_item_hierarchy_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_hierarchy_module_type_trade_item_hierarchy_id_key ON gdsn_dev.trade_item_hierarchy_module_type USING btree (trade_item_hierarchy_id);


--
-- Name: trade_item_information_type_extension_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_information_type_extension_id_key ON gdsn_dev.trade_item_information_type USING btree (extension_id);


--
-- Name: trade_item_information_type_trade_item_components_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_information_type_trade_item_components_id_key ON gdsn_dev.trade_item_information_type USING btree (trade_item_components_id);


--
-- Name: trade_item_measurements_module_type_trade_item_measurements_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_measurements_module_type_trade_item_measurements_key ON gdsn_dev.trade_item_measurements_module_type USING btree (trade_item_measurements_id);


--
-- Name: trade_item_type_brand_owner_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_type_brand_owner_id_key ON gdsn_dev.trade_item_type USING btree (brand_owner_id);


--
-- Name: trade_item_type_gdsn_trad_item_clas_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_type_gdsn_trad_item_clas_id_key ON gdsn_dev.trade_item_type USING btree (gdsn_trad_item_clas_id);


--
-- Name: trade_item_type_info_prov_of_trad_item_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_type_info_prov_of_trad_item_id_key ON gdsn_dev.trade_item_type USING btree (info_prov_of_trad_item_id);


--
-- Name: trade_item_type_next_lowe_leve_trad_item_info_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_type_next_lowe_leve_trad_item_info_id_key ON gdsn_dev.trade_item_type USING btree (next_lowe_leve_trad_item_info_id);


--
-- Name: trade_item_type_trad_item_sync_date_id_key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX trade_item_type_trad_item_sync_date_id_key ON gdsn_dev.trade_item_type USING btree (trad_item_sync_date_id);


--
-- Name: variable_trade_item_information_module_type_vari_trad_item__key; Type: INDEX; Schema: gdsn_dev; Owner: -
--

CREATE UNIQUE INDEX variable_trade_item_information_module_type_vari_trad_item__key ON gdsn_dev.variable_trade_item_information_module_type USING btree (vari_trad_item_info_id);


--
-- Name: trade_item_description_information_type BrandNameInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_description_information_type
    ADD CONSTRAINT "BrandNameInformation" FOREIGN KEY (brand_name_information_id) REFERENCES gdsn_dev.brand_name_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_type BrandOwner; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_type
    ADD CONSTRAINT "BrandOwner" FOREIGN KEY (brand_owner_id) REFERENCES gdsn_dev.party_in_role_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type CertificationInformationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "CertificationInformationModule" FOREIGN KEY (cert_info_modu_id) REFERENCES gdsn_dev.certification_information_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: consumer_instructions_module_type ConsumerInstructions; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.consumer_instructions_module_type
    ADD CONSTRAINT "ConsumerInstructions" FOREIGN KEY (consumer_instructions_id) REFERENCES gdsn_dev.consumer_instructions_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type ConsumerInstructionsModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "ConsumerInstructionsModule" FOREIGN KEY (cons_inst_modu_id) REFERENCES gdsn_dev.consumer_instructions_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: delivery_purchasing_information_module_type DeliveryPurchasingInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.delivery_purchasing_information_module_type
    ADD CONSTRAINT "DeliveryPurchasingInformation" FOREIGN KEY (deli_purc_info_id) REFERENCES gdsn_dev.delivery_purchasing_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type DeliveryPurchasingInformationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "DeliveryPurchasingInformationModule" FOREIGN KEY (deli_purc_info_modu_id) REFERENCES gdsn_dev.delivery_purchasing_information_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: durable_goods_characteristics_module_type DurableGoodsCharacteristics; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.durable_goods_characteristics_module_type
    ADD CONSTRAINT "DurableGoodsCharacteristics" FOREIGN KEY (dura_good_char_id) REFERENCES gdsn_dev.durable_goods_characteristics_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type DurableGoodsCharacteristicsModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "DurableGoodsCharacteristicsModule" FOREIGN KEY (dura_good_char_modu_id) REFERENCES gdsn_dev.durable_goods_characteristics_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type DutyFeeTaxInformationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "DutyFeeTaxInformationModule" FOREIGN KEY (duty_fee_tax_info_modu_id) REFERENCES gdsn_dev.duty_fee_tax_information_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_information_type Extension; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_information_type
    ADD CONSTRAINT "Extension" FOREIGN KEY (extension_id) REFERENCES gdsn_dev.extension_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_type GdsnTradeItemClassification; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_type
    ADD CONSTRAINT "GdsnTradeItemClassification" FOREIGN KEY (gdsn_trad_item_clas_id) REFERENCES gdsn_dev.gdsn_trade_item_classification_type(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: trade_item_type InformationProviderOfTradeItem; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_type
    ADD CONSTRAINT "InformationProviderOfTradeItem" FOREIGN KEY (info_prov_of_trad_item_id) REFERENCES gdsn_dev.party_in_role_type(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: marketing_information_module_type MarketingInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.marketing_information_module_type
    ADD CONSTRAINT "MarketingInformation" FOREIGN KEY (marketing_information_id) REFERENCES gdsn_dev.marketing_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type MarketingInformationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "MarketingInformationModule" FOREIGN KEY (mark_info_modu_id) REFERENCES gdsn_dev.marketing_information_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type MaterialModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "MaterialModule" FOREIGN KEY (material_module_id) REFERENCES gdsn_dev.material_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_type NextLowerLevelTradeItemInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_type
    ADD CONSTRAINT "NextLowerLevelTradeItemInformation" FOREIGN KEY (next_lowe_leve_trad_item_info_id) REFERENCES gdsn_dev.next_lower_level_trade_item_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: packaging_type PackagingDimension; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_type
    ADD CONSTRAINT "PackagingDimension" FOREIGN KEY (packaging_dimension_id) REFERENCES gdsn_dev.packaging_dimension_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type PackagingInformationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "PackagingInformationModule" FOREIGN KEY (pack_info_modu_id) REFERENCES gdsn_dev.packaging_information_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: packaging_marking_module_type PackagingMarking; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.packaging_marking_module_type
    ADD CONSTRAINT "PackagingMarking" FOREIGN KEY (packaging_marking_id) REFERENCES gdsn_dev.packaging_marking_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type PackagingMarkingModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "PackagingMarkingModule" FOREIGN KEY (packaging_marking_module_id) REFERENCES gdsn_dev.packaging_marking_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type PackagingSustainabilityModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "PackagingSustainabilityModule" FOREIGN KEY (pack_sust_modu_id) REFERENCES gdsn_dev.packaging_sustainability_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type PlaceOfItemActivityModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "PlaceOfItemActivityModule" FOREIGN KEY (plac_of_item_acti_modu_id) REFERENCES gdsn_dev.place_of_item_activity_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: place_of_item_activity_module_type PlaceOfProductActivity; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.place_of_item_activity_module_type
    ADD CONSTRAINT "PlaceOfProductActivity" FOREIGN KEY (place_of_product_activity_id) REFERENCES gdsn_dev.place_of_product_activity_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type ProductCharacteristicsModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "ProductCharacteristicsModule" FOREIGN KEY (prod_char_modu_id) REFERENCES gdsn_dev.product_characteristics_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type RegulatedTradeItemModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "RegulatedTradeItemModule" FOREIGN KEY (regu_trad_item_modu_id) REFERENCES gdsn_dev.regulated_trade_item_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type SalesInformationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "SalesInformationModule" FOREIGN KEY (sales_information_module_id) REFERENCES gdsn_dev.sales_information_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: sustainability_module_type SustainabilityInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sustainability_module_type
    ADD CONSTRAINT "SustainabilityInformation" FOREIGN KEY (sust_info_id) REFERENCES gdsn_dev.sustainability_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type SustainabilityModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "SustainabilityModule" FOREIGN KEY (sustainability_module_id) REFERENCES gdsn_dev.sustainability_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_information_type TradeItemComponents; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_information_type
    ADD CONSTRAINT "TradeItemComponents" FOREIGN KEY (trade_item_components_id) REFERENCES gdsn_dev.trade_item_components_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type TradeItemDataCarrierAndIdentificationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "TradeItemDataCarrierAndIdentificationModule" FOREIGN KEY (trad_item_data_carr_and_iden_modu_id) REFERENCES gdsn_dev.trade_item_data_carrier_and_identification_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_description_module_type TradeItemDescriptionInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_description_module_type
    ADD CONSTRAINT "TradeItemDescriptionInformation" FOREIGN KEY (trad_item_desc_info_id) REFERENCES gdsn_dev.trade_item_description_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type TradeItemDescriptionModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "TradeItemDescriptionModule" FOREIGN KEY (trad_item_desc_modu_id) REFERENCES gdsn_dev.trade_item_description_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_handling_module_type TradeItemHandlingInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_handling_module_type
    ADD CONSTRAINT "TradeItemHandlingInformation" FOREIGN KEY (trad_item_hand_info_id) REFERENCES gdsn_dev.trade_item_handling_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type TradeItemHandlingModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "TradeItemHandlingModule" FOREIGN KEY (trade_item_handling_module_id) REFERENCES gdsn_dev.trade_item_handling_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_hierarchy_module_type TradeItemHierarchy; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_hierarchy_module_type
    ADD CONSTRAINT "TradeItemHierarchy" FOREIGN KEY (trade_item_hierarchy_id) REFERENCES gdsn_dev.trade_item_hierarchy_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type TradeItemHierarchyModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "TradeItemHierarchyModule" FOREIGN KEY (trad_item_hier_modu_id) REFERENCES gdsn_dev.trade_item_hierarchy_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_measurements_module_type TradeItemMeasurements; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_measurements_module_type
    ADD CONSTRAINT "TradeItemMeasurements" FOREIGN KEY (trade_item_measurements_id) REFERENCES gdsn_dev.trade_item_measurements_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type TradeItemMeasurementsModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "TradeItemMeasurementsModule" FOREIGN KEY (trad_item_meas_modu_id) REFERENCES gdsn_dev.trade_item_measurements_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: sales_information_module_type TradeItemPriceInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.sales_information_module_type
    ADD CONSTRAINT "TradeItemPriceInformation" FOREIGN KEY (trad_item_pric_info_id) REFERENCES gdsn_dev.trade_item_price_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: trade_item_type TradeItemSynchronisationDates; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.trade_item_type
    ADD CONSTRAINT "TradeItemSynchronisationDates" FOREIGN KEY (trad_item_sync_date_id) REFERENCES gdsn_dev.trade_item_synchronisation_dates_type(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: variable_trade_item_information_module_type VariableTradeItemInformation; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.variable_trade_item_information_module_type
    ADD CONSTRAINT "VariableTradeItemInformation" FOREIGN KEY (vari_trad_item_info_id) REFERENCES gdsn_dev.variable_trade_item_information_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: extension_type VariableTradeItemInformationModule; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev.extension_type
    ADD CONSTRAINT "VariableTradeItemInformationModule" FOREIGN KEY (vari_trad_item_info_modu_id) REFERENCES gdsn_dev.variable_trade_item_information_module_type(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: _CataloguePrice _CataloguePrice_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_CataloguePrice"
    ADD CONSTRAINT "_CataloguePrice_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.trade_item_price_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _CataloguePrice _CataloguePrice_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_CataloguePrice"
    ADD CONSTRAINT "_CataloguePrice_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_price_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _CertificationInformation _CertificationInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_CertificationInformation"
    ADD CONSTRAINT "_CertificationInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.certification_information_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _CertificationInformation _CertificationInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_CertificationInformation"
    ADD CONSTRAINT "_CertificationInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.certification_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Certification _Certification_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Certification"
    ADD CONSTRAINT "_Certification_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.certification_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Certification _Certification_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Certification"
    ADD CONSTRAINT "_Certification_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.certification_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ChildTradeItem _ChildTradeItem_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ChildTradeItem"
    ADD CONSTRAINT "_ChildTradeItem_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.child_trade_item_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ChildTradeItem _ChildTradeItem_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ChildTradeItem"
    ADD CONSTRAINT "_ChildTradeItem_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.next_lower_level_trade_item_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Colour _Colour_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Colour"
    ADD CONSTRAINT "_Colour_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.colour_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Colour _Colour_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Colour"
    ADD CONSTRAINT "_Colour_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_description_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ComponentInformation _ComponentInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ComponentInformation"
    ADD CONSTRAINT "_ComponentInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.component_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ComponentInformation _ComponentInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ComponentInformation"
    ADD CONSTRAINT "_ComponentInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_components_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ConsumerWarningInformation _ConsumerWarningInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ConsumerWarningInformation"
    ADD CONSTRAINT "_ConsumerWarningInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.consumer_warning_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ConsumerWarningInformation _ConsumerWarningInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ConsumerWarningInformation"
    ADD CONSTRAINT "_ConsumerWarningInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.packaging_marking_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DataCarrier _DataCarrier_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_DataCarrier"
    ADD CONSTRAINT "_DataCarrier_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.data_carrier_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DataCarrier _DataCarrier_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_DataCarrier"
    ADD CONSTRAINT "_DataCarrier_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_data_carrier_and_identification_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DutyFeeTaxInformation _DutyFeeTaxInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_DutyFeeTaxInformation"
    ADD CONSTRAINT "_DutyFeeTaxInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.duty_fee_tax_information_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DutyFeeTaxInformation _DutyFeeTaxInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_DutyFeeTaxInformation"
    ADD CONSTRAINT "_DutyFeeTaxInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.duty_fee_tax_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DutyFeeTax _DutyFeeTax_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_DutyFeeTax"
    ADD CONSTRAINT "_DutyFeeTax_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.duty_fee_tax_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _DutyFeeTax _DutyFeeTax_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_DutyFeeTax"
    ADD CONSTRAINT "_DutyFeeTax_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.duty_fee_tax_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ImportClassification _ImportClassification_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ImportClassification"
    ADD CONSTRAINT "_ImportClassification_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.import_classification_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ImportClassification _ImportClassification_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ImportClassification"
    ADD CONSTRAINT "_ImportClassification_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.place_of_item_activity_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _IndividualPackagingComponentLevel _IndividualPackagingComponentLevel_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_IndividualPackagingComponentLevel"
    ADD CONSTRAINT "_IndividualPackagingComponentLevel_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.individual_packaging_component_level_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _IndividualPackagingComponentLevel _IndividualPackagingComponentLevel_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_IndividualPackagingComponentLevel"
    ADD CONSTRAINT "_IndividualPackagingComponentLevel_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.packaging_sustainability_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ManufacturerOfTradeItem _ManufacturerOfTradeItem_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ManufacturerOfTradeItem"
    ADD CONSTRAINT "_ManufacturerOfTradeItem_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.party_in_role_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ManufacturerOfTradeItem _ManufacturerOfTradeItem_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ManufacturerOfTradeItem"
    ADD CONSTRAINT "_ManufacturerOfTradeItem_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_type(gtin) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _MaterialComposition _MaterialComposition_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_MaterialComposition"
    ADD CONSTRAINT "_MaterialComposition_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.material_composition_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _MaterialComposition _MaterialComposition_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_MaterialComposition"
    ADD CONSTRAINT "_MaterialComposition_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.material_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Material _Material_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Material"
    ADD CONSTRAINT "_Material_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.material_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Material _Material_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Material"
    ADD CONSTRAINT "_Material_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.material_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _PackagingMaterial _PackagingMaterial_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_PackagingMaterial"
    ADD CONSTRAINT "_PackagingMaterial_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.packaging_material_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _PackagingMaterial _PackagingMaterial_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_PackagingMaterial"
    ADD CONSTRAINT "_PackagingMaterial_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.packaging_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Packaging _Packaging_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Packaging"
    ADD CONSTRAINT "_Packaging_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.packaging_information_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _Packaging _Packaging_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_Packaging"
    ADD CONSTRAINT "_Packaging_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.packaging_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ProductCharacteristics _ProductCharacteristics_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ProductCharacteristics"
    ADD CONSTRAINT "_ProductCharacteristics_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.product_characteristics_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ProductCharacteristics _ProductCharacteristics_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ProductCharacteristics"
    ADD CONSTRAINT "_ProductCharacteristics_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.product_characteristics_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ReferencedFileInformation _ReferencedFileInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ReferencedFileInformation"
    ADD CONSTRAINT "_ReferencedFileInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.certification_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ReferencedFileInformation _ReferencedFileInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ReferencedFileInformation"
    ADD CONSTRAINT "_ReferencedFileInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.referenced_file_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ReferencedTradeItem _ReferencedTradeItem_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ReferencedTradeItem"
    ADD CONSTRAINT "_ReferencedTradeItem_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.referenced_trade_item_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _ReferencedTradeItem _ReferencedTradeItem_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_ReferencedTradeItem"
    ADD CONSTRAINT "_ReferencedTradeItem_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_type(gtin) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _RegulatoryInformation _RegulatoryInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_RegulatoryInformation"
    ADD CONSTRAINT "_RegulatoryInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.regulated_trade_item_module_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _RegulatoryInformation _RegulatoryInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_RegulatoryInformation"
    ADD CONSTRAINT "_RegulatoryInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.regulatory_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TargetMarket _TargetMarket_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TargetMarket"
    ADD CONSTRAINT "_TargetMarket_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.target_market_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TargetMarket _TargetMarket_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TargetMarket"
    ADD CONSTRAINT "_TargetMarket_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_type(gtin) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TradeItemContactInformation _TradeItemContactInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TradeItemContactInformation"
    ADD CONSTRAINT "_TradeItemContactInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.trade_item_contact_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TradeItemContactInformation _TradeItemContactInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TradeItemContactInformation"
    ADD CONSTRAINT "_TradeItemContactInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_type(gtin) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TradeItemInformation _TradeItemInformation_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TradeItemInformation"
    ADD CONSTRAINT "_TradeItemInformation_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.trade_item_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TradeItemInformation _TradeItemInformation_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TradeItemInformation"
    ADD CONSTRAINT "_TradeItemInformation_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_type(gtin) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TradeItemStacking _TradeItemStacking_A_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TradeItemStacking"
    ADD CONSTRAINT "_TradeItemStacking_A_fkey" FOREIGN KEY ("A") REFERENCES gdsn_dev.trade_item_handling_information_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _TradeItemStacking _TradeItemStacking_B_fkey; Type: FK CONSTRAINT; Schema: gdsn_dev; Owner: -
--

ALTER TABLE ONLY gdsn_dev."_TradeItemStacking"
    ADD CONSTRAINT "_TradeItemStacking_B_fkey" FOREIGN KEY ("B") REFERENCES gdsn_dev.trade_item_stacking_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


alter schema public rename to temp_schema;
alter schema gdsn_dev rename to public;