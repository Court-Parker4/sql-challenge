--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2021-03-17 15:21:40

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 201 (class 1259 OID 24740)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying(40) NOT NULL,
    dept_name character varying(40)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 32922)
-- Name: deptemp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deptemp (
    emp_no integer,
    dept_no character varying(40)
);


ALTER TABLE public.deptemp OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 32933)
-- Name: deptmanager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deptmanager (
    dept_no character varying(40),
    emp_no integer
);


ALTER TABLE public.deptmanager OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 24735)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    emp_title character varying(40) NOT NULL,
    birth_date date,
    first_name character varying(40),
    last_name character varying(40),
    sex character varying(40),
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 32941)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer,
    salary integer
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 24745)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying(40) NOT NULL,
    title character varying(40)
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 2871 (class 2606 OID 24744)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 2869 (class 2606 OID 32945)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 2873 (class 2606 OID 24749)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


--
-- TOC entry 2875 (class 2606 OID 32925)
-- Name: deptemp deptemp_dept_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deptemp
    ADD CONSTRAINT deptemp_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 2876 (class 2606 OID 32946)
-- Name: deptemp deptemp_dept_no_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deptemp
    ADD CONSTRAINT deptemp_dept_no_fkey1 FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 2877 (class 2606 OID 32951)
-- Name: deptemp deptemp_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deptemp
    ADD CONSTRAINT deptemp_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2878 (class 2606 OID 32936)
-- Name: deptmanager deptmanager_dept_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deptmanager
    ADD CONSTRAINT deptmanager_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 2880 (class 2606 OID 32961)
-- Name: deptmanager deptmanager_dept_no_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deptmanager
    ADD CONSTRAINT deptmanager_dept_no_fkey1 FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 2879 (class 2606 OID 32956)
-- Name: deptmanager deptmanager_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deptmanager
    ADD CONSTRAINT deptmanager_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2874 (class 2606 OID 32971)
-- Name: employees employees_emp_title_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_emp_title_fkey FOREIGN KEY (emp_title) REFERENCES public.titles(title_id);


--
-- TOC entry 2881 (class 2606 OID 32966)
-- Name: salaries salaries_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


-- Completed on 2021-03-17 15:21:40

--
-- PostgreSQL database dump complete
--

