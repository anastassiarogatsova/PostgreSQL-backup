PGDMP  #                      |         	   springapp    16.1    16.1     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16562 	   springapp    DATABASE     k   CREATE DATABASE springapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE springapp;
                postgres    false            �            1259    16581    persons    TABLE     �   CREATE TABLE public.persons (
    person_id bigint NOT NULL,
    person_name character varying(255) NOT NULL,
    personal_code character varying(255) NOT NULL,
    person_phonenumber bigint NOT NULL
);
    DROP TABLE public.persons;
       public         heap    postgres    false                       0    0    TABLE persons    ACL     s   REVOKE ALL ON TABLE public.persons FROM postgres;
GRANT ALL ON TABLE public.persons TO postgres WITH GRANT OPTION;
          public          postgres    false    216            �            1259    16580    persons_person_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.persons_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.persons_person_id_seq;
       public          postgres    false    216                       0    0    persons_person_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.persons_person_id_seq OWNED BY public.persons.person_id;
          public          postgres    false    215                       0    0    SEQUENCE persons_person_id_seq    ACL     �   REVOKE ALL ON SEQUENCE public.persons_person_id_seq FROM postgres;
GRANT ALL ON SEQUENCE public.persons_person_id_seq TO postgres WITH GRANT OPTION;
          public          postgres    false    215            s           2604    16584    persons person_id    DEFAULT     v   ALTER TABLE ONLY public.persons ALTER COLUMN person_id SET DEFAULT nextval('public.persons_person_id_seq'::regclass);
 @   ALTER TABLE public.persons ALTER COLUMN person_id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    16581    persons 
   TABLE DATA           \   COPY public.persons (person_id, person_name, personal_code, person_phonenumber) FROM stdin;
    public          postgres    false    216   <                  0    0    persons_person_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.persons_person_id_seq', 40, true);
          public          postgres    false    215            u           2606    16588    persons persons_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (person_id);
 >   ALTER TABLE ONLY public.persons DROP CONSTRAINT persons_pkey;
       public            postgres    false    216               �  x�ER���@��|��bI2�k���Ļ���(4���Ǝ<	�
~dKJ��
��_�u�C���{�y�r��&����+XdUicR!�R�����(�u�aQ�����b2_A���. ���`)P(�������lcM���"��}�c�1��h��~[�p�V�t�%X��C%Sp�U�x&� ۶\gg$�����Q�;p}i�z���(�
Y��+�(o�����/?H���"���Ң�l��h+C)��*%v�9�Sx�4c�p�zk����sd�щk�y[��UU�u@�]�ώ��G�Ƈ��W����/:J�Ǳ�X���TƖtIH�(�F���W�B�B�uA��W{XV��1c�qK��ǇVt��wd�F��%�S�<�?��J���e���u��B�P��u�ίO_��{����go|}4y|r��7���z�6�����ٟ"�?
Qp��1�&ڳd     