PGDMP                     
    {         	   puska_ops    15.3    15.3     $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    17600 	   puska_ops    DATABASE     k   CREATE DATABASE puska_ops WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE puska_ops;
                postgres    false            �            1259    17630    prediction_susu_daily_province    TABLE     �   CREATE TABLE public.prediction_susu_daily_province (
    id bigint NOT NULL,
    date date,
    province character varying(255),
    prediction double precision
);
 2   DROP TABLE public.prediction_susu_daily_province;
       public         heap    postgres    false            �            1259    17635    prediction_susu_daily_regency    TABLE     �   CREATE TABLE public.prediction_susu_daily_regency (
    id bigint NOT NULL,
    date date,
    regency character varying(255),
    prediction double precision
);
 1   DROP TABLE public.prediction_susu_daily_regency;
       public         heap    postgres    false            �            1259    17640    prediction_susu_daily_unit    TABLE     �   CREATE TABLE public.prediction_susu_daily_unit (
    id bigint NOT NULL,
    date date,
    unit character varying(255),
    prediction double precision
);
 .   DROP TABLE public.prediction_susu_daily_unit;
       public         heap    postgres    false            �            1259    17601    produksi_susu    TABLE     �  CREATE TABLE public.produksi_susu (
    id bigint NOT NULL,
    tgl_produksi date,
    jumlah numeric(8,2),
    satuan character varying(255),
    sumber_pasokan character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    deleted_by bigint,
    id_unit_ternak bigint,
    id_jenis_produk bigint
);
 !   DROP TABLE public.produksi_susu;
       public         heap    postgres    false            �            1259    17608    unit_ternak    TABLE     �  CREATE TABLE public.unit_ternak (
    id bigint NOT NULL,
    nama_unit character varying(255),
    alamat text,
    provinsi_id bigint,
    kota_id bigint,
    kecamatan_id bigint,
    kelurahan_id bigint,
    latitude numeric(10,8),
    longitude numeric(10,8),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    deleted_by bigint
);
    DROP TABLE public.unit_ternak;
       public         heap    postgres    false            �            1259    17620    wilayah    TABLE     y   CREATE TABLE public.wilayah (
    id bigint NOT NULL,
    kode character varying(13),
    nama character varying(100)
);
    DROP TABLE public.wilayah;
       public         heap    postgres    false                      0    17630    prediction_susu_daily_province 
   TABLE DATA           X   COPY public.prediction_susu_daily_province (id, date, province, prediction) FROM stdin;
    public          postgres    false    217   v                  0    17635    prediction_susu_daily_regency 
   TABLE DATA           V   COPY public.prediction_susu_daily_regency (id, date, regency, prediction) FROM stdin;
    public          postgres    false    218   +       !          0    17640    prediction_susu_daily_unit 
   TABLE DATA           P   COPY public.prediction_susu_daily_unit (id, date, unit, prediction) FROM stdin;
    public          postgres    false    219   �                 0    17601    produksi_susu 
   TABLE DATA           �   COPY public.produksi_susu (id, tgl_produksi, jumlah, satuan, sumber_pasokan, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by, id_unit_ternak, id_jenis_produk) FROM stdin;
    public          postgres    false    214                    0    17608    unit_ternak 
   TABLE DATA           �   COPY public.unit_ternak (id, nama_unit, alamat, provinsi_id, kota_id, kecamatan_id, kelurahan_id, latitude, longitude, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by) FROM stdin;
    public          postgres    false    215   .!                 0    17620    wilayah 
   TABLE DATA           1   COPY public.wilayah (id, kode, nama) FROM stdin;
    public          postgres    false    216   �!       �           2606    17634 B   prediction_susu_daily_province prediction_susu_daily_province_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.prediction_susu_daily_province
    ADD CONSTRAINT prediction_susu_daily_province_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.prediction_susu_daily_province DROP CONSTRAINT prediction_susu_daily_province_pkey;
       public            postgres    false    217            �           2606    17639 @   prediction_susu_daily_regency prediction_susu_daily_regency_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.prediction_susu_daily_regency
    ADD CONSTRAINT prediction_susu_daily_regency_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.prediction_susu_daily_regency DROP CONSTRAINT prediction_susu_daily_regency_pkey;
       public            postgres    false    218            �           2606    17644 :   prediction_susu_daily_unit prediction_susu_daily_unit_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.prediction_susu_daily_unit
    ADD CONSTRAINT prediction_susu_daily_unit_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.prediction_susu_daily_unit DROP CONSTRAINT prediction_susu_daily_unit_pkey;
       public            postgres    false    219            �           2606    17607     produksi_susu produksi_susu_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.produksi_susu
    ADD CONSTRAINT produksi_susu_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.produksi_susu DROP CONSTRAINT produksi_susu_pkey;
       public            postgres    false    214            �           2606    17614    unit_ternak unit_ternak_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.unit_ternak
    ADD CONSTRAINT unit_ternak_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.unit_ternak DROP CONSTRAINT unit_ternak_pkey;
       public            postgres    false    215            �           2606    17624    wilayah wilayah_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.wilayah
    ADD CONSTRAINT wilayah_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.wilayah DROP CONSTRAINT wilayah_pkey;
       public            postgres    false    216               �   x�eлA����
�ӎ���	I.$ AB��F��d�~Y�>n��wrOܮ�����kKGo0E["\�׵ڑ��QK8XQ�KFSlk]��1w�n���Dk U�OqP@��PA!1 ��RbP�+112PNN�AA1@�J�A�ǟ��ʂ��/⊈�          �   x�e�;
�0���s�J��9@�4&b���(MƝ�G���%R�\���|����8�%m##T�jd�l��j����n�T�j5:�j�]���CuXe���ӎ� �]�7P\t�JP^�xP`t��p���FEF'+s��x1�ÅFG+s���j�"��V:��/�ʙ�      !     x�]�;jA�y��v�'����C�8qf{���Vz������5�yk<�>?^^��G����x"�h.�D��f8�ub$-�L4e�a%Z�c'�2���d�Y#�d�/0��.�F(FFS	EɊy��ă���,�P�� SE˚`z�ش�b�e�0�N�?�#)�BN��R��H����0���G��l����,v�fdb�I5rH�K6��.��K�%�
��K9?.�ș'\ک��B�l/�1�ᒏjw�GFƟ/�Ȳ_w �d�.           x�����1D��W��iْ�=�SXrL`/9$�CL�����ʂ0��b#��
u��ҏ>���*r�.�㏷o������_�?�/=�~�F�ɘ���^_
���ߨ�ez���~ՎD�q$�He��G��Q�e��d��.�Ez;sB�.3�̬M;]�,|�����2W��QNh����GaK-gՈ��E�]9����r5M�m�;
k�R[n^6���j�ͻ�F��I�y�Ȝ�9�����B9{m�y�(�S�������Ky�;�}`��}���q��\�������FҤ�=�ё����J;��Q`]�`����`�t�9��a6GAWB�]`�y[(AVJ�]�]9aot#�����7�HAWR����+*l�.��h�z[tt$��Eha���9���Id�^PJZo�. �jR3Xt��Lz�F����`��6z����BT`@�W�s0�`���#�0G 3`� f�	��#�s0�`���#�0G 3`� f�̀9�r� 3@�^[��Q�         `   x�3��PpK,��tLI)J-.VH�/R�rqs�p����������!)[[��Y���j4�?.#΀��4L��Ե/F��� ��2b         E   x�3�40��J,OT��--�2�u�BE�I�9�y���\�1��wQirf�	\$�Z������� )F     