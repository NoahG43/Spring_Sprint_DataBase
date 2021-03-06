toc.dat                                                                                             0000600 0004000 0002000 00000024763 14255543027 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       3    5                z           SpringSprint    14.4    14.4 &               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                     1262    16394    SpringSprint    DATABASE     k   CREATE DATABASE "SpringSprint" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Canada.1252';
    DROP DATABASE "SpringSprint";
                postgres    false                     3079    16395 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false         !           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2         ?            1259    16405    Bill    TABLE       CREATE TABLE public."Bill" (
    "InvoiceNo" integer NOT NULL,
    "BookingID" integer NOT NULL,
    "GuestID" integer NOT NULL,
    "RoomCharge" integer NOT NULL,
    "RoomService" integer NOT NULL,
    "BarCharges" integer NOT NULL,
    "MiscCharges" integer NOT NULL
);
    DROP TABLE public."Bill";
       public         heap    postgres    false         ?            1259    16408    Booking    TABLE     U  CREATE TABLE public."Booking" (
    "BookingId" integer NOT NULL,
    "HotelCode" integer NOT NULL,
    "GuestID" integer NOT NULL,
    "RoomNo" integer NOT NULL,
    "BookingDate" character varying NOT NULL,
    "BookingTime" integer NOT NULL,
    "ArrivalDate" character varying NOT NULL,
    "DepartureDate" character varying NOT NULL
);
    DROP TABLE public."Booking";
       public         heap    postgres    false         ?            1259    16413    Guest    TABLE        CREATE TABLE public."Guest" (
    "GuestID" integer NOT NULL,
    "BookingID" integer NOT NULL,
    "FirstName" character varying NOT NULL,
    "LastName" character varying NOT NULL,
    "PhoneNo" integer NOT NULL,
    "Type" character varying NOT NULL
);
    DROP TABLE public."Guest";
       public         heap    postgres    false         ?            1259    16418    Hotel    TABLE     +  CREATE TABLE public."Hotel" (
    "HotelCode" integer NOT NULL,
    "HotelName" character varying NOT NULL,
    "Address" character varying NOT NULL,
    "Postcode" character varying NOT NULL,
    "NumRooms" integer NOT NULL,
    "PhoneNo" integer NOT NULL,
    "City" character varying NOT NULL
);
    DROP TABLE public."Hotel";
       public         heap    postgres    false         ?            1259    16423    Hotel_HotelCode_seq    SEQUENCE     ?   CREATE SEQUENCE public."Hotel_HotelCode_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Hotel_HotelCode_seq";
       public          postgres    false    213         "           0    0    Hotel_HotelCode_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Hotel_HotelCode_seq" OWNED BY public."Hotel"."HotelCode";
          public          postgres    false    214         ?            1259    16424    Room    TABLE     ?   CREATE TABLE public."Room" (
    "RoomNo" integer NOT NULL,
    "RoomType" character varying NOT NULL,
    "HotelCode" integer NOT NULL,
    "Occupancy" numeric NOT NULL
);
    DROP TABLE public."Room";
       public         heap    postgres    false         ?            1259    16429    RoomType    TABLE     ?   CREATE TABLE public."RoomType" (
    "RoomType" character varying NOT NULL,
    "RoomPrice" integer NOT NULL,
    "DefaultRoomPrice" integer NOT NULL,
    "Rooming" integer NOT NULL
);
    DROP TABLE public."RoomType";
       public         heap    postgres    false         ?            1259    16434    Room_HotelCode_seq    SEQUENCE     ?   CREATE SEQUENCE public."Room_HotelCode_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Room_HotelCode_seq";
       public          postgres    false    215         #           0    0    Room_HotelCode_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Room_HotelCode_seq" OWNED BY public."Room"."HotelCode";
          public          postgres    false    217         ?            1259    16435    Room_RoomNo_seq    SEQUENCE     ?   CREATE SEQUENCE public."Room_RoomNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Room_RoomNo_seq";
       public          postgres    false    215         $           0    0    Room_RoomNo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Room_RoomNo_seq" OWNED BY public."Room"."RoomNo";
          public          postgres    false    218         ?            1259    16451 
   wakeupcall    TABLE     _   CREATE TABLE public.wakeupcall (
    guestid integer,
    wakeupcall character varying(255)
);
    DROP TABLE public.wakeupcall;
       public         heap    postgres    false         w           2604    16436    Hotel HotelCode    DEFAULT     x   ALTER TABLE ONLY public."Hotel" ALTER COLUMN "HotelCode" SET DEFAULT nextval('public."Hotel_HotelCode_seq"'::regclass);
 B   ALTER TABLE public."Hotel" ALTER COLUMN "HotelCode" DROP DEFAULT;
       public          postgres    false    214    213         x           2604    16437    Room RoomNo    DEFAULT     p   ALTER TABLE ONLY public."Room" ALTER COLUMN "RoomNo" SET DEFAULT nextval('public."Room_RoomNo_seq"'::regclass);
 >   ALTER TABLE public."Room" ALTER COLUMN "RoomNo" DROP DEFAULT;
       public          postgres    false    218    215         y           2604    16438    Room HotelCode    DEFAULT     v   ALTER TABLE ONLY public."Room" ALTER COLUMN "HotelCode" SET DEFAULT nextval('public."Room_HotelCode_seq"'::regclass);
 A   ALTER TABLE public."Room" ALTER COLUMN "HotelCode" DROP DEFAULT;
       public          postgres    false    217    215                   0    16405    Bill 
   TABLE DATA              COPY public."Bill" ("InvoiceNo", "BookingID", "GuestID", "RoomCharge", "RoomService", "BarCharges", "MiscCharges") FROM stdin;
    public          postgres    false    210       3345.dat           0    16408    Booking 
   TABLE DATA           ?   COPY public."Booking" ("BookingId", "HotelCode", "GuestID", "RoomNo", "BookingDate", "BookingTime", "ArrivalDate", "DepartureDate") FROM stdin;
    public          postgres    false    211       3346.dat           0    16413    Guest 
   TABLE DATA           e   COPY public."Guest" ("GuestID", "BookingID", "FirstName", "LastName", "PhoneNo", "Type") FROM stdin;
    public          postgres    false    212       3347.dat           0    16418    Hotel 
   TABLE DATA           q   COPY public."Hotel" ("HotelCode", "HotelName", "Address", "Postcode", "NumRooms", "PhoneNo", "City") FROM stdin;
    public          postgres    false    213       3348.dat           0    16424    Room 
   TABLE DATA           P   COPY public."Room" ("RoomNo", "RoomType", "HotelCode", "Occupancy") FROM stdin;
    public          postgres    false    215       3350.dat           0    16429    RoomType 
   TABLE DATA           \   COPY public."RoomType" ("RoomType", "RoomPrice", "DefaultRoomPrice", "Rooming") FROM stdin;
    public          postgres    false    216       3351.dat           0    16451 
   wakeupcall 
   TABLE DATA           9   COPY public.wakeupcall (guestid, wakeupcall) FROM stdin;
    public          postgres    false    219       3354.dat %           0    0    Hotel_HotelCode_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Hotel_HotelCode_seq"', 1, false);
          public          postgres    false    214         &           0    0    Room_HotelCode_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Room_HotelCode_seq"', 1, false);
          public          postgres    false    217         '           0    0    Room_RoomNo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Room_RoomNo_seq"', 1, false);
          public          postgres    false    218         {           2606    16440    Bill Bill_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Bill"
    ADD CONSTRAINT "Bill_pkey" PRIMARY KEY ("InvoiceNo");
 <   ALTER TABLE ONLY public."Bill" DROP CONSTRAINT "Bill_pkey";
       public            postgres    false    210         }           2606    16442    Booking Booking_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT "Booking_pkey" PRIMARY KEY ("BookingId");
 B   ALTER TABLE ONLY public."Booking" DROP CONSTRAINT "Booking_pkey";
       public            postgres    false    211                    2606    16444    Guest Guest_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_pkey" PRIMARY KEY ("GuestID");
 >   ALTER TABLE ONLY public."Guest" DROP CONSTRAINT "Guest_pkey";
       public            postgres    false    212         ?           2606    16446    Hotel Hotel_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Hotel"
    ADD CONSTRAINT "Hotel_pkey" PRIMARY KEY ("HotelCode");
 >   ALTER TABLE ONLY public."Hotel" DROP CONSTRAINT "Hotel_pkey";
       public            postgres    false    213         ?           2606    16448    RoomType RoomType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."RoomType"
    ADD CONSTRAINT "RoomType_pkey" PRIMARY KEY ("RoomType");
 D   ALTER TABLE ONLY public."RoomType" DROP CONSTRAINT "RoomType_pkey";
       public            postgres    false    216         ?           2606    16450    Room Room_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Room"
    ADD CONSTRAINT "Room_pkey" PRIMARY KEY ("RoomNo");
 <   ALTER TABLE ONLY public."Room" DROP CONSTRAINT "Room_pkey";
       public            postgres    false    215                     3345.dat                                                                                            0000600 0004000 0002000 00000000030 14255543027 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	112	223	99	0	0	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3346.dat                                                                                            0000600 0004000 0002000 00000000073 14255543027 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        223	666	112	203	July1/2002	1600	July2/2022	July3/2022
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3347.dat                                                                                            0000600 0004000 0002000 00000000165 14255543027 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        112	223	Scott	Hartley	5555555	SpecialEd
699	69	Patrick	Swazy	4444444	Famous
666	667	Angelina	Jolie	1111111	Wife
\.


                                                                                                                                                                                                                                                                                                                                                                                                           3348.dat                                                                                            0000600 0004000 0002000 00000000076 14255543027 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        666	HeartlyHotels	224 Baker St	A2N2T7	700	5555555	Arkham
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3350.dat                                                                                            0000600 0004000 0002000 00000000025 14255543027 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        203	basic	666	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3351.dat                                                                                            0000600 0004000 0002000 00000000023 14255543027 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Basic	99	99	0
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3354.dat                                                                                            0000600 0004000 0002000 00000000005 14255543027 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000022757 14255543027 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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

DROP DATABASE "SpringSprint";
--
-- Name: SpringSprint; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "SpringSprint" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Canada.1252';


ALTER DATABASE "SpringSprint" OWNER TO postgres;

\connect "SpringSprint"

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
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Bill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Bill" (
    "InvoiceNo" integer NOT NULL,
    "BookingID" integer NOT NULL,
    "GuestID" integer NOT NULL,
    "RoomCharge" integer NOT NULL,
    "RoomService" integer NOT NULL,
    "BarCharges" integer NOT NULL,
    "MiscCharges" integer NOT NULL
);


ALTER TABLE public."Bill" OWNER TO postgres;

--
-- Name: Booking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Booking" (
    "BookingId" integer NOT NULL,
    "HotelCode" integer NOT NULL,
    "GuestID" integer NOT NULL,
    "RoomNo" integer NOT NULL,
    "BookingDate" character varying NOT NULL,
    "BookingTime" integer NOT NULL,
    "ArrivalDate" character varying NOT NULL,
    "DepartureDate" character varying NOT NULL
);


ALTER TABLE public."Booking" OWNER TO postgres;

--
-- Name: Guest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Guest" (
    "GuestID" integer NOT NULL,
    "BookingID" integer NOT NULL,
    "FirstName" character varying NOT NULL,
    "LastName" character varying NOT NULL,
    "PhoneNo" integer NOT NULL,
    "Type" character varying NOT NULL
);


ALTER TABLE public."Guest" OWNER TO postgres;

--
-- Name: Hotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Hotel" (
    "HotelCode" integer NOT NULL,
    "HotelName" character varying NOT NULL,
    "Address" character varying NOT NULL,
    "Postcode" character varying NOT NULL,
    "NumRooms" integer NOT NULL,
    "PhoneNo" integer NOT NULL,
    "City" character varying NOT NULL
);


ALTER TABLE public."Hotel" OWNER TO postgres;

--
-- Name: Hotel_HotelCode_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Hotel_HotelCode_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Hotel_HotelCode_seq" OWNER TO postgres;

--
-- Name: Hotel_HotelCode_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Hotel_HotelCode_seq" OWNED BY public."Hotel"."HotelCode";


--
-- Name: Room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Room" (
    "RoomNo" integer NOT NULL,
    "RoomType" character varying NOT NULL,
    "HotelCode" integer NOT NULL,
    "Occupancy" numeric NOT NULL
);


ALTER TABLE public."Room" OWNER TO postgres;

--
-- Name: RoomType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RoomType" (
    "RoomType" character varying NOT NULL,
    "RoomPrice" integer NOT NULL,
    "DefaultRoomPrice" integer NOT NULL,
    "Rooming" integer NOT NULL
);


ALTER TABLE public."RoomType" OWNER TO postgres;

--
-- Name: Room_HotelCode_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Room_HotelCode_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Room_HotelCode_seq" OWNER TO postgres;

--
-- Name: Room_HotelCode_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Room_HotelCode_seq" OWNED BY public."Room"."HotelCode";


--
-- Name: Room_RoomNo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Room_RoomNo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Room_RoomNo_seq" OWNER TO postgres;

--
-- Name: Room_RoomNo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Room_RoomNo_seq" OWNED BY public."Room"."RoomNo";


--
-- Name: wakeupcall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wakeupcall (
    guestid integer,
    wakeupcall character varying(255)
);


ALTER TABLE public.wakeupcall OWNER TO postgres;

--
-- Name: Hotel HotelCode; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Hotel" ALTER COLUMN "HotelCode" SET DEFAULT nextval('public."Hotel_HotelCode_seq"'::regclass);


--
-- Name: Room RoomNo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Room" ALTER COLUMN "RoomNo" SET DEFAULT nextval('public."Room_RoomNo_seq"'::regclass);


--
-- Name: Room HotelCode; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Room" ALTER COLUMN "HotelCode" SET DEFAULT nextval('public."Room_HotelCode_seq"'::regclass);


--
-- Data for Name: Bill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Bill" ("InvoiceNo", "BookingID", "GuestID", "RoomCharge", "RoomService", "BarCharges", "MiscCharges") FROM stdin;
\.
COPY public."Bill" ("InvoiceNo", "BookingID", "GuestID", "RoomCharge", "RoomService", "BarCharges", "MiscCharges") FROM '$$PATH$$/3345.dat';

--
-- Data for Name: Booking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Booking" ("BookingId", "HotelCode", "GuestID", "RoomNo", "BookingDate", "BookingTime", "ArrivalDate", "DepartureDate") FROM stdin;
\.
COPY public."Booking" ("BookingId", "HotelCode", "GuestID", "RoomNo", "BookingDate", "BookingTime", "ArrivalDate", "DepartureDate") FROM '$$PATH$$/3346.dat';

--
-- Data for Name: Guest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Guest" ("GuestID", "BookingID", "FirstName", "LastName", "PhoneNo", "Type") FROM stdin;
\.
COPY public."Guest" ("GuestID", "BookingID", "FirstName", "LastName", "PhoneNo", "Type") FROM '$$PATH$$/3347.dat';

--
-- Data for Name: Hotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Hotel" ("HotelCode", "HotelName", "Address", "Postcode", "NumRooms", "PhoneNo", "City") FROM stdin;
\.
COPY public."Hotel" ("HotelCode", "HotelName", "Address", "Postcode", "NumRooms", "PhoneNo", "City") FROM '$$PATH$$/3348.dat';

--
-- Data for Name: Room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Room" ("RoomNo", "RoomType", "HotelCode", "Occupancy") FROM stdin;
\.
COPY public."Room" ("RoomNo", "RoomType", "HotelCode", "Occupancy") FROM '$$PATH$$/3350.dat';

--
-- Data for Name: RoomType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RoomType" ("RoomType", "RoomPrice", "DefaultRoomPrice", "Rooming") FROM stdin;
\.
COPY public."RoomType" ("RoomType", "RoomPrice", "DefaultRoomPrice", "Rooming") FROM '$$PATH$$/3351.dat';

--
-- Data for Name: wakeupcall; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wakeupcall (guestid, wakeupcall) FROM stdin;
\.
COPY public.wakeupcall (guestid, wakeupcall) FROM '$$PATH$$/3354.dat';

--
-- Name: Hotel_HotelCode_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Hotel_HotelCode_seq"', 1, false);


--
-- Name: Room_HotelCode_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Room_HotelCode_seq"', 1, false);


--
-- Name: Room_RoomNo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Room_RoomNo_seq"', 1, false);


--
-- Name: Bill Bill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Bill"
    ADD CONSTRAINT "Bill_pkey" PRIMARY KEY ("InvoiceNo");


--
-- Name: Booking Booking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Booking"
    ADD CONSTRAINT "Booking_pkey" PRIMARY KEY ("BookingId");


--
-- Name: Guest Guest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Guest"
    ADD CONSTRAINT "Guest_pkey" PRIMARY KEY ("GuestID");


--
-- Name: Hotel Hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Hotel"
    ADD CONSTRAINT "Hotel_pkey" PRIMARY KEY ("HotelCode");


--
-- Name: RoomType RoomType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RoomType"
    ADD CONSTRAINT "RoomType_pkey" PRIMARY KEY ("RoomType");


--
-- Name: Room Room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Room"
    ADD CONSTRAINT "Room_pkey" PRIMARY KEY ("RoomNo");


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 