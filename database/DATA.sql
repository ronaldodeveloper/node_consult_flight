PGDMP     *    
                y            consultaVoo    13.3    13.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24585    consultaVoo    DATABASE     m   CREATE DATABASE "consultaVoo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "consultaVoo";
                postgres    false            �            1259    24596    vooagendados    TABLE     
  CREATE TABLE public.vooagendados (
    id integer NOT NULL,
    cidadedepartida character varying(50) NOT NULL,
    cidadedestino character varying(50) NOT NULL,
    datahora timestamp without time zone NOT NULL,
    companhiaaerea character varying(50) NOT NULL
);
     DROP TABLE public.vooagendados;
       public         heap    postgres    false            �            1259    24594    vooagendados_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vooagendados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.vooagendados_id_seq;
       public          postgres    false    201            �           0    0    vooagendados_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.vooagendados_id_seq OWNED BY public.vooagendados.id;
          public          postgres    false    200            "           2604    24599    vooagendados id    DEFAULT     r   ALTER TABLE ONLY public.vooagendados ALTER COLUMN id SET DEFAULT nextval('public.vooagendados_id_seq'::regclass);
 >   ALTER TABLE public.vooagendados ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    24596    vooagendados 
   TABLE DATA           d   COPY public.vooagendados (id, cidadedepartida, cidadedestino, datahora, companhiaaerea) FROM stdin;
    public          postgres    false    201   �       �           0    0    vooagendados_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.vooagendados_id_seq', 6, true);
          public          postgres    false    200            $           2606    24601    vooagendados vooagendados_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.vooagendados
    ADD CONSTRAINT vooagendados_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.vooagendados DROP CONSTRAINT vooagendados_pkey;
       public            postgres    false    201            �   �   x�]�͊�@�s�����uko�(�Ѳ x�6���F��������[~�'1�u�V
����j/�V[���L�B뾠.+��#Q�@EMt/������9���@-�|Yj�XM-�a%��|�_|�/4Se����.�"�c3/}*��������E��-[������������A�*����w#D| �THR     