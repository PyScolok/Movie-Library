PGDMP         ;                x            movie_library_db    12.3    12.3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16599    movie_library_db    DATABASE     �   CREATE DATABASE movie_library_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
     DROP DATABASE movie_library_db;
                postgres    false            �            1259    25189    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    25187    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    250            �           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    249            �            1259    25199    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    25197     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    252            �           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    251            �            1259    16631 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16629    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16641    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16639    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16623    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16621    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16649 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16659    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16657    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16647    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16667    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16665 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    17047    contact_contact    TABLE     �   CREATE TABLE public.contact_contact (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    date timestamp with time zone NOT NULL
);
 #   DROP TABLE public.contact_contact;
       public         heap    postgres    false            �            1259    17045    contact_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contact_contact_id_seq;
       public          postgres    false    248            �           0    0    contact_contact_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact_contact.id;
          public          postgres    false    247            �            1259    16727    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16725    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16613    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16611    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    17009    django_flatpage    TABLE     4  CREATE TABLE public.django_flatpage (
    id integer NOT NULL,
    url character varying(100) NOT NULL,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    enable_comments boolean NOT NULL,
    template_name character varying(70) NOT NULL,
    registration_required boolean NOT NULL
);
 #   DROP TABLE public.django_flatpage;
       public         heap    postgres    false            �            1259    17007    django_flatpage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_flatpage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.django_flatpage_id_seq;
       public          postgres    false    244            �           0    0    django_flatpage_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.django_flatpage_id_seq OWNED BY public.django_flatpage.id;
          public          postgres    false    243            �            1259    17020    django_flatpage_sites    TABLE     �   CREATE TABLE public.django_flatpage_sites (
    id integer NOT NULL,
    flatpage_id integer NOT NULL,
    site_id integer NOT NULL
);
 )   DROP TABLE public.django_flatpage_sites;
       public         heap    postgres    false            �            1259    17018    django_flatpage_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_flatpage_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.django_flatpage_sites_id_seq;
       public          postgres    false    246            �           0    0    django_flatpage_sites_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.django_flatpage_sites_id_seq OWNED BY public.django_flatpage_sites.id;
          public          postgres    false    245            �            1259    16602    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16600    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16758    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17001    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    16999    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    242            �           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    241            �            1259    16770    movies_actor    TABLE     t  CREATE TABLE public.movies_actor (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    age smallint,
    description text NOT NULL,
    image character varying(100) NOT NULL,
    country character varying(50),
    country_en character varying(50),
    country_ru character varying(50),
    description_en text,
    description_ru text,
    first_name_en character varying(50),
    first_name_ru character varying(50),
    last_name_en character varying(50),
    last_name_ru character varying(50),
    CONSTRAINT movies_actor_age_check CHECK ((age >= 0))
);
     DROP TABLE public.movies_actor;
       public         heap    postgres    false            �            1259    16768    movies_actor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movies_actor_id_seq;
       public          postgres    false    222            �           0    0    movies_actor_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.movies_actor_id_seq OWNED BY public.movies_actor.id;
          public          postgres    false    221            �            1259    16782    movies_category    TABLE     -  CREATE TABLE public.movies_category (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    description text NOT NULL,
    url character varying(160) NOT NULL,
    description_en text,
    description_ru text,
    name_en character varying(150),
    name_ru character varying(150)
);
 #   DROP TABLE public.movies_category;
       public         heap    postgres    false            �            1259    16780    movies_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.movies_category_id_seq;
       public          postgres    false    224            �           0    0    movies_category_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.movies_category_id_seq OWNED BY public.movies_category.id;
          public          postgres    false    223            �            1259    16883    movies_comment    TABLE     �   CREATE TABLE public.movies_comment (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    text text NOT NULL,
    parent_id integer,
    author character varying(50) NOT NULL,
    review_id integer NOT NULL
);
 "   DROP TABLE public.movies_comment;
       public         heap    postgres    false            �            1259    16881    movies_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.movies_comment_id_seq;
       public          postgres    false    240            �           0    0    movies_comment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.movies_comment_id_seq OWNED BY public.movies_comment.id;
          public          postgres    false    239            �            1259    16795    movies_genre    TABLE     '  CREATE TABLE public.movies_genre (
    id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text NOT NULL,
    url character varying(160) NOT NULL,
    description_en text,
    description_ru text,
    name_en character varying(25),
    name_ru character varying(25)
);
     DROP TABLE public.movies_genre;
       public         heap    postgres    false            �            1259    16793    movies_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movies_genre_id_seq;
       public          postgres    false    226            �           0    0    movies_genre_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.movies_genre_id_seq OWNED BY public.movies_genre.id;
          public          postgres    false    225            �            1259    16808    movies_movie    TABLE     �  CREATE TABLE public.movies_movie (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    tagline character varying(100) NOT NULL,
    description text NOT NULL,
    poster character varying(100) NOT NULL,
    year smallint,
    country character varying(50) NOT NULL,
    world_premiere date,
    budget integer,
    fees_in_world integer,
    url character varying(160) NOT NULL,
    draft boolean NOT NULL,
    category_id integer,
    trailer_link character varying(200),
    country_en character varying(50),
    country_ru character varying(50),
    description_en text,
    description_ru text,
    tagline_en character varying(100),
    tagline_ru character varying(100),
    title_en character varying(100),
    title_ru character varying(100),
    CONSTRAINT movies_movie_budget_check CHECK ((budget >= 0)),
    CONSTRAINT movies_movie_fees_in_world_check CHECK ((fees_in_world >= 0)),
    CONSTRAINT movies_movie_year_check CHECK ((year >= 0))
);
     DROP TABLE public.movies_movie;
       public         heap    postgres    false            �            1259    16824    movies_movie_actors    TABLE     �   CREATE TABLE public.movies_movie_actors (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    actor_id integer NOT NULL
);
 '   DROP TABLE public.movies_movie_actors;
       public         heap    postgres    false            �            1259    16822    movies_movie_actors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movie_actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.movies_movie_actors_id_seq;
       public          postgres    false    230            �           0    0    movies_movie_actors_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.movies_movie_actors_id_seq OWNED BY public.movies_movie_actors.id;
          public          postgres    false    229            �            1259    16832    movies_movie_directors    TABLE     �   CREATE TABLE public.movies_movie_directors (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    actor_id integer NOT NULL
);
 *   DROP TABLE public.movies_movie_directors;
       public         heap    postgres    false            �            1259    16830    movies_movie_directors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movie_directors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.movies_movie_directors_id_seq;
       public          postgres    false    232            �           0    0    movies_movie_directors_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.movies_movie_directors_id_seq OWNED BY public.movies_movie_directors.id;
          public          postgres    false    231            �            1259    16840    movies_movie_genres    TABLE     �   CREATE TABLE public.movies_movie_genres (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);
 '   DROP TABLE public.movies_movie_genres;
       public         heap    postgres    false            �            1259    16838    movies_movie_genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movie_genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.movies_movie_genres_id_seq;
       public          postgres    false    234            �           0    0    movies_movie_genres_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.movies_movie_genres_id_seq OWNED BY public.movies_movie_genres.id;
          public          postgres    false    233            �            1259    16806    movies_movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.movies_movie_id_seq;
       public          postgres    false    228            �           0    0    movies_movie_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies_movie.id;
          public          postgres    false    227            �            1259    16875    movies_movieshots    TABLE     �   CREATE TABLE public.movies_movieshots (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    image character varying(100) NOT NULL,
    movie_id integer NOT NULL,
    title_en character varying(50),
    title_ru character varying(50)
);
 %   DROP TABLE public.movies_movieshots;
       public         heap    postgres    false            �            1259    16873    movies_movieshots_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_movieshots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.movies_movieshots_id_seq;
       public          postgres    false    238            �           0    0    movies_movieshots_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.movies_movieshots_id_seq OWNED BY public.movies_movieshots.id;
          public          postgres    false    237            �            1259    16856    movies_review    TABLE     �   CREATE TABLE public.movies_review (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    name character varying(50) NOT NULL,
    title character varying(100) NOT NULL,
    text text NOT NULL,
    movie_id integer NOT NULL
);
 !   DROP TABLE public.movies_review;
       public         heap    postgres    false            �            1259    16854    movies_review_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.movies_review_id_seq;
       public          postgres    false    236            �           0    0    movies_review_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.movies_review_id_seq OWNED BY public.movies_review.id;
          public          postgres    false    235            :           2604    25192    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            ;           2604    25202    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            !           2604    16634    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            "           2604    16644    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                        2604    16626    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            #           2604    16652    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            $           2604    16662    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            %           2604    16670    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            9           2604    17050    contact_contact id    DEFAULT     x   ALTER TABLE ONLY public.contact_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);
 A   ALTER TABLE public.contact_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            &           2604    16730    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    16616    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            7           2604    17012    django_flatpage id    DEFAULT     x   ALTER TABLE ONLY public.django_flatpage ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_id_seq'::regclass);
 A   ALTER TABLE public.django_flatpage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            8           2604    17023    django_flatpage_sites id    DEFAULT     �   ALTER TABLE ONLY public.django_flatpage_sites ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_sites_id_seq'::regclass);
 G   ALTER TABLE public.django_flatpage_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246                       2604    16605    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            6           2604    17004    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            (           2604    16773    movies_actor id    DEFAULT     r   ALTER TABLE ONLY public.movies_actor ALTER COLUMN id SET DEFAULT nextval('public.movies_actor_id_seq'::regclass);
 >   ALTER TABLE public.movies_actor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            *           2604    16785    movies_category id    DEFAULT     x   ALTER TABLE ONLY public.movies_category ALTER COLUMN id SET DEFAULT nextval('public.movies_category_id_seq'::regclass);
 A   ALTER TABLE public.movies_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            5           2604    16886    movies_comment id    DEFAULT     v   ALTER TABLE ONLY public.movies_comment ALTER COLUMN id SET DEFAULT nextval('public.movies_comment_id_seq'::regclass);
 @   ALTER TABLE public.movies_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            +           2604    16798    movies_genre id    DEFAULT     r   ALTER TABLE ONLY public.movies_genre ALTER COLUMN id SET DEFAULT nextval('public.movies_genre_id_seq'::regclass);
 >   ALTER TABLE public.movies_genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            ,           2604    16811    movies_movie id    DEFAULT     r   ALTER TABLE ONLY public.movies_movie ALTER COLUMN id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);
 >   ALTER TABLE public.movies_movie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            0           2604    16827    movies_movie_actors id    DEFAULT     �   ALTER TABLE ONLY public.movies_movie_actors ALTER COLUMN id SET DEFAULT nextval('public.movies_movie_actors_id_seq'::regclass);
 E   ALTER TABLE public.movies_movie_actors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            1           2604    16835    movies_movie_directors id    DEFAULT     �   ALTER TABLE ONLY public.movies_movie_directors ALTER COLUMN id SET DEFAULT nextval('public.movies_movie_directors_id_seq'::regclass);
 H   ALTER TABLE public.movies_movie_directors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            2           2604    16843    movies_movie_genres id    DEFAULT     �   ALTER TABLE ONLY public.movies_movie_genres ALTER COLUMN id SET DEFAULT nextval('public.movies_movie_genres_id_seq'::regclass);
 E   ALTER TABLE public.movies_movie_genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            4           2604    16878    movies_movieshots id    DEFAULT     |   ALTER TABLE ONLY public.movies_movieshots ALTER COLUMN id SET DEFAULT nextval('public.movies_movieshots_id_seq'::regclass);
 C   ALTER TABLE public.movies_movieshots ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            3           2604    16859    movies_review id    DEFAULT     t   ALTER TABLE ONLY public.movies_review ALTER COLUMN id SET DEFAULT nextval('public.movies_review_id_seq'::regclass);
 ?   ALTER TABLE public.movies_review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            |          0    25189    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    250   �]      ~          0    25199    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    252   �]      S          0    16631 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �]      U          0    16641    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ^      Q          0    16623    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   1^      W          0    16649 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �a      Y          0    16659    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   c      [          0    16667    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   %c      z          0    17047    contact_contact 
   TABLE DATA           :   COPY public.contact_contact (id, email, date) FROM stdin;
    public          postgres    false    248   Bc      ]          0    16727    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �c      O          0    16613    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   l      v          0    17009    django_flatpage 
   TABLE DATA           y   COPY public.django_flatpage (id, url, title, content, enable_comments, template_name, registration_required) FROM stdin;
    public          postgres    false    244   �l      x          0    17020    django_flatpage_sites 
   TABLE DATA           I   COPY public.django_flatpage_sites (id, flatpage_id, site_id) FROM stdin;
    public          postgres    false    246   �n      M          0    16602    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �n      ^          0    16758    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   �q      t          0    17001    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    242   @t      `          0    16770    movies_actor 
   TABLE DATA           �   COPY public.movies_actor (id, first_name, last_name, age, description, image, country, country_en, country_ru, description_en, description_ru, first_name_en, first_name_ru, last_name_en, last_name_ru) FROM stdin;
    public          postgres    false    222   mt      b          0    16782    movies_category 
   TABLE DATA           w   COPY public.movies_category (id, name, description, url, description_en, description_ru, name_en, name_ru) FROM stdin;
    public          postgres    false    224   �      r          0    16883    movies_comment 
   TABLE DATA           W   COPY public.movies_comment (id, email, text, parent_id, author, review_id) FROM stdin;
    public          postgres    false    240   4�      d          0    16795    movies_genre 
   TABLE DATA           t   COPY public.movies_genre (id, name, description, url, description_en, description_ru, name_en, name_ru) FROM stdin;
    public          postgres    false    226   ё      f          0    16808    movies_movie 
   TABLE DATA             COPY public.movies_movie (id, title, tagline, description, poster, year, country, world_premiere, budget, fees_in_world, url, draft, category_id, trailer_link, country_en, country_ru, description_en, description_ru, tagline_en, tagline_ru, title_en, title_ru) FROM stdin;
    public          postgres    false    228   ��      h          0    16824    movies_movie_actors 
   TABLE DATA           E   COPY public.movies_movie_actors (id, movie_id, actor_id) FROM stdin;
    public          postgres    false    230   e�      j          0    16832    movies_movie_directors 
   TABLE DATA           H   COPY public.movies_movie_directors (id, movie_id, actor_id) FROM stdin;
    public          postgres    false    232   ��      l          0    16840    movies_movie_genres 
   TABLE DATA           E   COPY public.movies_movie_genres (id, movie_id, genre_id) FROM stdin;
    public          postgres    false    234   ˪      p          0    16875    movies_movieshots 
   TABLE DATA           [   COPY public.movies_movieshots (id, title, image, movie_id, title_en, title_ru) FROM stdin;
    public          postgres    false    238   �      n          0    16856    movies_review 
   TABLE DATA           O   COPY public.movies_review (id, email, name, title, text, movie_id) FROM stdin;
    public          postgres    false    236   :�      �           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);
          public          postgres    false    249            �           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    251            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    contact_contact_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.contact_contact_id_seq', 2, true);
          public          postgres    false    247            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 75, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    204            �           0    0    django_flatpage_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.django_flatpage_id_seq', 1, true);
          public          postgres    false    243            �           0    0    django_flatpage_sites_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.django_flatpage_sites_id_seq', 1, true);
          public          postgres    false    245            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);
          public          postgres    false    202            �           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    241            �           0    0    movies_actor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movies_actor_id_seq', 8, true);
          public          postgres    false    221            �           0    0    movies_category_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.movies_category_id_seq', 2, true);
          public          postgres    false    223            �           0    0    movies_comment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.movies_comment_id_seq', 7, true);
          public          postgres    false    239            �           0    0    movies_genre_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movies_genre_id_seq', 4, true);
          public          postgres    false    225            �           0    0    movies_movie_actors_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.movies_movie_actors_id_seq', 4, true);
          public          postgres    false    229            �           0    0    movies_movie_directors_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.movies_movie_directors_id_seq', 4, true);
          public          postgres    false    231            �           0    0    movies_movie_genres_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.movies_movie_genres_id_seq', 5, true);
          public          postgres    false    233            �           0    0    movies_movie_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.movies_movie_id_seq', 4, true);
          public          postgres    false    227            �           0    0    movies_movieshots_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.movies_movieshots_id_seq', 12, true);
          public          postgres    false    237            �           0    0    movies_review_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.movies_review_id_seq', 6, true);
          public          postgres    false    235            �           2606    25222 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    250            �           2606    25194 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    250            �           2606    25206 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    252            �           2606    25204 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    252            I           2606    16756    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            N           2606    16683 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            Q           2606    16646 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            K           2606    16636    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            D           2606    16674 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            F           2606    16628 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            Y           2606    16664 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            \           2606    16698 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            S           2606    16654    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            _           2606    16672 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            b           2606    16712 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            V           2606    16750     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    17052 $   contact_contact contact_contact_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.contact_contact
    ADD CONSTRAINT contact_contact_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.contact_contact DROP CONSTRAINT contact_contact_pkey;
       public            postgres    false    248            e           2606    16736 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            ?           2606    16620 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            A           2606    16618 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �           2606    17017 $   django_flatpage django_flatpage_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_flatpage
    ADD CONSTRAINT django_flatpage_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_flatpage DROP CONSTRAINT django_flatpage_pkey;
       public            postgres    false    244            �           2606    17029 M   django_flatpage_sites django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq UNIQUE (flatpage_id, site_id);
 w   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq;
       public            postgres    false    246    246            �           2606    17025 0   django_flatpage_sites django_flatpage_sites_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_sites_pkey;
       public            postgres    false    246            =           2606    16610 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            i           2606    16765 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            �           2606    17043 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    242            �           2606    17006    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    242            l           2606    16779    movies_actor movies_actor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.movies_actor
    ADD CONSTRAINT movies_actor_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.movies_actor DROP CONSTRAINT movies_actor_pkey;
       public            postgres    false    222            n           2606    16790 $   movies_category movies_category_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.movies_category
    ADD CONSTRAINT movies_category_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.movies_category DROP CONSTRAINT movies_category_pkey;
       public            postgres    false    224            q           2606    16792 '   movies_category movies_category_url_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.movies_category
    ADD CONSTRAINT movies_category_url_key UNIQUE (url);
 Q   ALTER TABLE ONLY public.movies_category DROP CONSTRAINT movies_category_url_key;
       public            postgres    false    224            �           2606    16891 "   movies_comment movies_comment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.movies_comment
    ADD CONSTRAINT movies_comment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.movies_comment DROP CONSTRAINT movies_comment_pkey;
       public            postgres    false    240            s           2606    16803    movies_genre movies_genre_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.movies_genre
    ADD CONSTRAINT movies_genre_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.movies_genre DROP CONSTRAINT movies_genre_pkey;
       public            postgres    false    226            v           2606    16805 !   movies_genre movies_genre_url_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.movies_genre
    ADD CONSTRAINT movies_genre_url_key UNIQUE (url);
 K   ALTER TABLE ONLY public.movies_genre DROP CONSTRAINT movies_genre_url_key;
       public            postgres    false    226                       2606    16902 G   movies_movie_actors movies_movie_actors_movie_id_actor_id_73463e17_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_actors
    ADD CONSTRAINT movies_movie_actors_movie_id_actor_id_73463e17_uniq UNIQUE (movie_id, actor_id);
 q   ALTER TABLE ONLY public.movies_movie_actors DROP CONSTRAINT movies_movie_actors_movie_id_actor_id_73463e17_uniq;
       public            postgres    false    230    230            �           2606    16829 ,   movies_movie_actors movies_movie_actors_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.movies_movie_actors
    ADD CONSTRAINT movies_movie_actors_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.movies_movie_actors DROP CONSTRAINT movies_movie_actors_pkey;
       public            postgres    false    230            �           2606    16916 M   movies_movie_directors movies_movie_directors_movie_id_actor_id_a1932843_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_directors
    ADD CONSTRAINT movies_movie_directors_movie_id_actor_id_a1932843_uniq UNIQUE (movie_id, actor_id);
 w   ALTER TABLE ONLY public.movies_movie_directors DROP CONSTRAINT movies_movie_directors_movie_id_actor_id_a1932843_uniq;
       public            postgres    false    232    232            �           2606    16837 2   movies_movie_directors movies_movie_directors_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.movies_movie_directors
    ADD CONSTRAINT movies_movie_directors_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.movies_movie_directors DROP CONSTRAINT movies_movie_directors_pkey;
       public            postgres    false    232            �           2606    16930 G   movies_movie_genres movies_movie_genres_movie_id_genre_id_5ff3c723_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_genres
    ADD CONSTRAINT movies_movie_genres_movie_id_genre_id_5ff3c723_uniq UNIQUE (movie_id, genre_id);
 q   ALTER TABLE ONLY public.movies_movie_genres DROP CONSTRAINT movies_movie_genres_movie_id_genre_id_5ff3c723_uniq;
       public            postgres    false    234    234            �           2606    16845 ,   movies_movie_genres movies_movie_genres_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.movies_movie_genres
    ADD CONSTRAINT movies_movie_genres_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.movies_movie_genres DROP CONSTRAINT movies_movie_genres_pkey;
       public            postgres    false    234            y           2606    16819    movies_movie movies_movie_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.movies_movie
    ADD CONSTRAINT movies_movie_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.movies_movie DROP CONSTRAINT movies_movie_pkey;
       public            postgres    false    228            |           2606    16821 !   movies_movie movies_movie_url_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.movies_movie
    ADD CONSTRAINT movies_movie_url_key UNIQUE (url);
 K   ALTER TABLE ONLY public.movies_movie DROP CONSTRAINT movies_movie_url_key;
       public            postgres    false    228            �           2606    16880 (   movies_movieshots movies_movieshots_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.movies_movieshots
    ADD CONSTRAINT movies_movieshots_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.movies_movieshots DROP CONSTRAINT movies_movieshots_pkey;
       public            postgres    false    238            �           2606    16864     movies_review movies_rewiew_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.movies_review
    ADD CONSTRAINT movies_rewiew_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.movies_review DROP CONSTRAINT movies_rewiew_pkey;
       public            postgres    false    236            �           1259    25223 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    250            �           1259    25213 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    250            �           1259    25220 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    252            �           1259    25219 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    252            G           1259    16757    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            L           1259    16694 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            O           1259    16695 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            B           1259    16680 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            W           1259    16710 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            Z           1259    16709 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            ]           1259    16724 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            `           1259    16723 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            T           1259    16751     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            c           1259    16747 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            f           1259    16748 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    17040 *   django_flatpage_sites_flatpage_id_078bbc8b    INDEX     s   CREATE INDEX django_flatpage_sites_flatpage_id_078bbc8b ON public.django_flatpage_sites USING btree (flatpage_id);
 >   DROP INDEX public.django_flatpage_sites_flatpage_id_078bbc8b;
       public            postgres    false    246            �           1259    17041 &   django_flatpage_sites_site_id_bfd8ea84    INDEX     k   CREATE INDEX django_flatpage_sites_site_id_bfd8ea84 ON public.django_flatpage_sites USING btree (site_id);
 :   DROP INDEX public.django_flatpage_sites_site_id_bfd8ea84;
       public            postgres    false    246            �           1259    17026    django_flatpage_url_41612362    INDEX     W   CREATE INDEX django_flatpage_url_41612362 ON public.django_flatpage USING btree (url);
 0   DROP INDEX public.django_flatpage_url_41612362;
       public            postgres    false    244            �           1259    17027 !   django_flatpage_url_41612362_like    INDEX     p   CREATE INDEX django_flatpage_url_41612362_like ON public.django_flatpage USING btree (url varchar_pattern_ops);
 5   DROP INDEX public.django_flatpage_url_41612362_like;
       public            postgres    false    244            g           1259    16767 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            j           1259    16766 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            �           1259    17044     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    242            o           1259    16892 !   movies_category_url_2dc68cc8_like    INDEX     p   CREATE INDEX movies_category_url_2dc68cc8_like ON public.movies_category USING btree (url varchar_pattern_ops);
 5   DROP INDEX public.movies_category_url_2dc68cc8_like;
       public            postgres    false    224            �           1259    16972 !   movies_comment_parent_id_da6b2f24    INDEX     a   CREATE INDEX movies_comment_parent_id_da6b2f24 ON public.movies_comment USING btree (parent_id);
 5   DROP INDEX public.movies_comment_parent_id_da6b2f24;
       public            postgres    false    240            �           1259    33392 !   movies_comment_review_id_47ce9823    INDEX     a   CREATE INDEX movies_comment_review_id_47ce9823 ON public.movies_comment USING btree (review_id);
 5   DROP INDEX public.movies_comment_review_id_47ce9823;
       public            postgres    false    240            t           1259    16893    movies_genre_url_4b79c3a9_like    INDEX     j   CREATE INDEX movies_genre_url_4b79c3a9_like ON public.movies_genre USING btree (url varchar_pattern_ops);
 2   DROP INDEX public.movies_genre_url_4b79c3a9_like;
       public            postgres    false    226            }           1259    16914 %   movies_movie_actors_actor_id_44828aa1    INDEX     i   CREATE INDEX movies_movie_actors_actor_id_44828aa1 ON public.movies_movie_actors USING btree (actor_id);
 9   DROP INDEX public.movies_movie_actors_actor_id_44828aa1;
       public            postgres    false    230            �           1259    16913 %   movies_movie_actors_movie_id_baed65f3    INDEX     i   CREATE INDEX movies_movie_actors_movie_id_baed65f3 ON public.movies_movie_actors USING btree (movie_id);
 9   DROP INDEX public.movies_movie_actors_movie_id_baed65f3;
       public            postgres    false    230            w           1259    16900 !   movies_movie_category_id_d3487bd9    INDEX     a   CREATE INDEX movies_movie_category_id_d3487bd9 ON public.movies_movie USING btree (category_id);
 5   DROP INDEX public.movies_movie_category_id_d3487bd9;
       public            postgres    false    228            �           1259    16928 (   movies_movie_directors_actor_id_d63f385f    INDEX     o   CREATE INDEX movies_movie_directors_actor_id_d63f385f ON public.movies_movie_directors USING btree (actor_id);
 <   DROP INDEX public.movies_movie_directors_actor_id_d63f385f;
       public            postgres    false    232            �           1259    16927 (   movies_movie_directors_movie_id_7f54bd58    INDEX     o   CREATE INDEX movies_movie_directors_movie_id_7f54bd58 ON public.movies_movie_directors USING btree (movie_id);
 <   DROP INDEX public.movies_movie_directors_movie_id_7f54bd58;
       public            postgres    false    232            �           1259    16942 %   movies_movie_genres_genre_id_c3609db2    INDEX     i   CREATE INDEX movies_movie_genres_genre_id_c3609db2 ON public.movies_movie_genres USING btree (genre_id);
 9   DROP INDEX public.movies_movie_genres_genre_id_c3609db2;
       public            postgres    false    234            �           1259    16941 %   movies_movie_genres_movie_id_ff5e55a1    INDEX     i   CREATE INDEX movies_movie_genres_movie_id_ff5e55a1 ON public.movies_movie_genres USING btree (movie_id);
 9   DROP INDEX public.movies_movie_genres_movie_id_ff5e55a1;
       public            postgres    false    234            z           1259    16899    movies_movie_url_1d87d71d_like    INDEX     j   CREATE INDEX movies_movie_url_1d87d71d_like ON public.movies_movie USING btree (url varchar_pattern_ops);
 2   DROP INDEX public.movies_movie_url_1d87d71d_like;
       public            postgres    false    228            �           1259    16966 #   movies_movieshots_movie_id_f38f4fa4    INDEX     e   CREATE INDEX movies_movieshots_movie_id_f38f4fa4 ON public.movies_movieshots USING btree (movie_id);
 7   DROP INDEX public.movies_movieshots_movie_id_f38f4fa4;
       public            postgres    false    238            �           1259    16948    movies_rewiew_movie_id_d83c3f5e    INDEX     ]   CREATE INDEX movies_rewiew_movie_id_d83c3f5e ON public.movies_review USING btree (movie_id);
 3   DROP INDEX public.movies_rewiew_movie_id_d83c3f5e;
       public            postgres    false    236            �           2606    25207 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public          postgres    false    2899    213    250            �           2606    25214 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    250    2990    252            �           2606    16689 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2886    211    207            �           2606    16684 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2891    209    211            �           2606    16675 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2881    205            �           2606    16704 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    2891    209            �           2606    16699 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    215    2899            �           2606    16718 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2886    207    217            �           2606    16713 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2899    213            �           2606    16737 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    219    2881            �           2606    16742 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    219    2899            �           2606    17030 L   django_flatpage_sites django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl FOREIGN KEY (flatpage_id) REFERENCES public.django_flatpage(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_site_flatpage_id_078bbc8b_fk_django_fl;
       public          postgres    false    246    2975    244            �           2606    17035 N   django_flatpage_sites django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.django_flatpage_sites DROP CONSTRAINT django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id;
       public          postgres    false    2973    246    242            �           2606    33387 E   movies_comment movies_comment_parent_id_da6b2f24_fk_movies_comment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_comment
    ADD CONSTRAINT movies_comment_parent_id_da6b2f24_fk_movies_comment_id FOREIGN KEY (parent_id) REFERENCES public.movies_comment(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.movies_comment DROP CONSTRAINT movies_comment_parent_id_da6b2f24_fk_movies_comment_id;
       public          postgres    false    240    2967    240            �           2606    33382 D   movies_comment movies_comment_review_id_47ce9823_fk_movies_review_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_comment
    ADD CONSTRAINT movies_comment_review_id_47ce9823_fk_movies_review_id FOREIGN KEY (review_id) REFERENCES public.movies_review(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.movies_comment DROP CONSTRAINT movies_comment_review_id_47ce9823_fk_movies_review_id;
       public          postgres    false    2961    236    240            �           2606    16908 L   movies_movie_actors movies_movie_actors_actor_id_44828aa1_fk_movies_actor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_actors
    ADD CONSTRAINT movies_movie_actors_actor_id_44828aa1_fk_movies_actor_id FOREIGN KEY (actor_id) REFERENCES public.movies_actor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.movies_movie_actors DROP CONSTRAINT movies_movie_actors_actor_id_44828aa1_fk_movies_actor_id;
       public          postgres    false    222    2924    230            �           2606    16903 L   movies_movie_actors movies_movie_actors_movie_id_baed65f3_fk_movies_movie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_actors
    ADD CONSTRAINT movies_movie_actors_movie_id_baed65f3_fk_movies_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_movie(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.movies_movie_actors DROP CONSTRAINT movies_movie_actors_movie_id_baed65f3_fk_movies_movie_id;
       public          postgres    false    228    2937    230            �           2606    16894 D   movies_movie movies_movie_category_id_d3487bd9_fk_movies_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie
    ADD CONSTRAINT movies_movie_category_id_d3487bd9_fk_movies_category_id FOREIGN KEY (category_id) REFERENCES public.movies_category(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.movies_movie DROP CONSTRAINT movies_movie_category_id_d3487bd9_fk_movies_category_id;
       public          postgres    false    2926    224    228            �           2606    16922 R   movies_movie_directors movies_movie_directors_actor_id_d63f385f_fk_movies_actor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_directors
    ADD CONSTRAINT movies_movie_directors_actor_id_d63f385f_fk_movies_actor_id FOREIGN KEY (actor_id) REFERENCES public.movies_actor(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.movies_movie_directors DROP CONSTRAINT movies_movie_directors_actor_id_d63f385f_fk_movies_actor_id;
       public          postgres    false    232    222    2924            �           2606    16917 R   movies_movie_directors movies_movie_directors_movie_id_7f54bd58_fk_movies_movie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_directors
    ADD CONSTRAINT movies_movie_directors_movie_id_7f54bd58_fk_movies_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_movie(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.movies_movie_directors DROP CONSTRAINT movies_movie_directors_movie_id_7f54bd58_fk_movies_movie_id;
       public          postgres    false    232    228    2937            �           2606    16936 L   movies_movie_genres movies_movie_genres_genre_id_c3609db2_fk_movies_genre_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_genres
    ADD CONSTRAINT movies_movie_genres_genre_id_c3609db2_fk_movies_genre_id FOREIGN KEY (genre_id) REFERENCES public.movies_genre(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.movies_movie_genres DROP CONSTRAINT movies_movie_genres_genre_id_c3609db2_fk_movies_genre_id;
       public          postgres    false    226    2931    234            �           2606    16931 L   movies_movie_genres movies_movie_genres_movie_id_ff5e55a1_fk_movies_movie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movie_genres
    ADD CONSTRAINT movies_movie_genres_movie_id_ff5e55a1_fk_movies_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_movie(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.movies_movie_genres DROP CONSTRAINT movies_movie_genres_movie_id_ff5e55a1_fk_movies_movie_id;
       public          postgres    false    228    2937    234            �           2606    16961 H   movies_movieshots movies_movieshots_movie_id_f38f4fa4_fk_movies_movie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_movieshots
    ADD CONSTRAINT movies_movieshots_movie_id_f38f4fa4_fk_movies_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_movie(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.movies_movieshots DROP CONSTRAINT movies_movieshots_movie_id_f38f4fa4_fk_movies_movie_id;
       public          postgres    false    2937    228    238            �           2606    16943 @   movies_review movies_rewiew_movie_id_d83c3f5e_fk_movies_movie_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies_review
    ADD CONSTRAINT movies_rewiew_movie_id_d83c3f5e_fk_movies_movie_id FOREIGN KEY (movie_id) REFERENCES public.movies_movie(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.movies_review DROP CONSTRAINT movies_rewiew_movie_id_d83c3f5e_fk_movies_movie_id;
       public          postgres    false    236    228    2937            |   5   x�3�L�O�K)2204t�M���+*�L�,�4�2B��L�KI��H�%c���� �D      ~      x������ � �      S      x������ � �      U      x������ � �      Q   �  x���Mn�0���)t����5
��8l+���9Aw)ЮZ������O�I�@ݨ�pH�Hqmtc�߳���o�U�E�|e���J����e��$]�2F٥ & e���]
`���a�B���iV,�e9�W"kaA�9�;�?ƢA�EF�G�M��Y�����g�zԜ�G_�(��!h�8Xq ����;8+�B��@�Q�>}?���-0�oG _n�ax7në��ȿy��*�E��i&� �����HFC��P_-�Q>��-�2Vy�ef�!�'�~������=��^��H�t�Ko����~#0��*c��BWȱg�B�t7��2���O}��+>�[1gEZ�W3���h����;0zt0��
F���?�����u��Q�6��z[_֗vUL�}:��B&, �� Գ���QO�u��FmH���7��^3p`�d�"�	e������O"F!;�,���R�k}#�=M��ܐ����1�+H�|q�5
�$b��]�I�w�i���V��?��,�=X�i�����{U�������q��kh_U���	��E?��淸2R#яB%8~�K3���*d��Oa��V-;d~�,f���LF	I�7}c�}�7��}��F�>�;e�r��O�f����}_����}r2��x�:R��k|���Hn��p�'yU���ݛ���x@��ݥ���а�a���nm8JP�����rx�t��!��������t(�U&�	�g9d��m�� ,��p7 H�ݾ��nH��"���tf{h�g9bIfz	(K/C�T@Ib�R�\��$����̣�0���c�#��G�E(�&$([��E�0�*��)��&G,6mr	�JG���dL��y��V���y�4S���F/�A7�8���V҂�8�V��Ҹ�߮�-E2�7R��^�P      W     x�m�KO�@ ���+z�f��e����PA�Z��<*B)%n��x��s���à}����	�LE&��r�V���Q�*�HS$.�r�m�����2(n���CZQ;���u�o�+�!�45��	��:c� �4@ʪ @vH����k�4Y��wǩ~���6���TA�K۵���s��P7�!5�Qv��c��;��i+7�<-ݦ�wO~����R.$0�F,b��$پlΡ���g���9ϱ���|f�ꊢ� ��[      Y      x������ � �      [      x������ � �      z   H   x�3�,I-.q�M���+*�4202�50�52V02�2��26�333�01�60�2"���@�������8F��� }S      ]   r  x��[Ko�>/ŀט�����\��'��%�r���@��a�R�\��` �$~�QvdC��7���TO�pgzgv��2^�Q.���������D�#펄T.e�� ���_I5�A�m�x6��x>��?�|{xp0:�γ�?�`w 8�-LQ(GNZi*������G�z�"D� :WFxOV�����Fy�8��'�O�p(�q�F!�z�*i>/~f��œ,+�+/:�<C�
\Ў�� �Ba����p�^۾}8�sp���ܾu�$p�C������S�0��� >��z{���$r"�:��\u?��/&x^��_�&y�O��=*�)��A��Ah5(>c (��1C�S1��oaB��_����Þ	\:��/�,맜�j���g�/&F�����8��*����Lm�_����?b%���2[U�fs��r�*��ہ�a�_M����b�qq��7a>���`>א����:+�B�Q�g!��9��$/�b/�J!1� H�TD7�ꅤYHa�G�	t�w���,(i�V9Y����_�IA��d�`�.����/�6Ax�a�5H�:�����4��:mVl9�
~XH��Ƹ����h��o���v�Y�'T�a���
��%��YX�-+�x���Zn2u�oeq,b˩Vn���^�$�7����&{��:.ҥ�H��xTW�]Kʉ���9h{���2*_R���Q�	`o�JmԒ�	
�$'�z�\d����qQk�d	���`M�2�T&'/�sp%J���oZ�6I U[����q�4v�J�-!~�o�젹�z�jN��H�T���[��/[$����=V\�鰹�YK���W�7vgA�G�r�pX� ?\|�)O¿Z�f�nV�oБzEB�r�|*���w@�p�j����J!3F'��Iԫ
1�(� !#0��*Eꤒ���XNȔ'��8�{���)��������J�Pd�7Y��z�ꎱāA[����ޱ�c,?�H����;�ΎE%�4��k�Ǯ��e8�(Hj�b>�2Sel��'!�!��"G�m��~^����Qo!A� &�+&%޺:/a�'�3�ם�F H���Fk��U.�0,�����G��\g�$�2a��)���EJ�9�?yag|��1�Cv�g}P*�
l^
N�l�����S���?t&�oe��I���&Ց��l�H���^jZaN�Cd��vW\�ۉ�B�"b�KHc�`{�����]S��jmN�I��H	� ��Ƀ�l�C��`Ǔ�s�F�\U�#�#�_2�c>�!R}�'�q'��L��*g� �*��;��Y�3vh��S�����D�-�h��|�(��i3U\���լ�[�j'��UY���r�SC��ý�{�og;������~W�+�\.�/̼�Ts���w�ǧ��idxq��B��L�,��͢��f���L
���;���ݦ����xwZ ���w�K���#/B��C�H�#�9�֐�I&hPi�9�7L_����Č$�k�NZ�f��ցߕ1��"D�Gt���8����p�^~}4<�����;:9��!�*݀�"ʓV8���Y[�)ՒN�)�cRz�r�fiK���9x�zI�.m��L�9
_L`��+em��l�3����X�|��f�ȥ:
�B��w�t��t�O+���"i?+:9�)�)i���&���|YrX5�ΔfS���X\9ᬵu��jZ�S&I̼�u�juݵ���Z,x+���O�w�՚y��k�f&%id�ڴ�ʛ�%�ūl]���Y�X�ğ�No��O�"�,�Cwc���^��*V@��c2�e�ɾ�.F�p#u��:Z�#uE:��4��Kds@a���
�w��6���k��Dm��]��ֵ�ޚ]�{K��B1<���O������[Ac�����hc�
utŞo�>�sP�i���,��z���Vv��.��kO�HCW��w�K,{�3�z_���g'�������;M�f��^�Tx��/�X�����w����ܸi{���T�>�m�fu�.��߻����tV�_�se�N���˿��z*Z} �4'�������^�&���4,�b:�o�z��Vf`���U��<���|�*?<8:/��`u��ӂ�t�r��9>:�O���d��";g7�ǣ�c�gߺ%�����w�      O   �   x�U��n�0��sf���n�քHM\%�&�~^Q�z�;��q(�S	�F)V����ԜZKZp|)����I�9�Z���H��M���\B���u[��ceK%�֙G�
:tv_U@C�M��S:�%��7�N����'�w��C���])~@�8������̶pt�g��v��ts���łdN3OS�{1����S������/)�5      v   �  x�U�M��@��y����8� ��X�q:Nb�?��=�\�;<n�;���E�mU���7����Sw�	���_~t�P��L%�
���JV
��	��k� E�|YQ)FSP\�V���B��b�};��OfVYK�|�8W���9_1^̵�"�Y���Gn!����'�=	���̙G�_w�������;����o.��.��(��3Z84b2�[ʄ�?ǋ�bԿb�M��=nw����rL�[��r0ߛ�A���Z��;+�����a#������3��XA��L����^8{@�+�2�T`�����'�@�AtA)�� _=���ԛ���������^H�;��98:{��例�&|T0����G�J���p.�`���x/(������M����4��R9���Z��%�<ts��Bz��a�)v���p���p�      x      x�3�4�4����� �X      M   �  x����n�0���S�~U4��YV�P¦HRU��;6	��D�M)�?��fǾ��n����� ��k��j3�W0�/�%A	6gD��/�e�<�=O(vT� g���t�����"���,u_~�/�G����W��>�!��1xcH�Wǩ�;�������7G�ǲ�9�c��E�bn?����K�O2Ċʮ��W�T�Z�fCE!�/էo��,��EY�QnE�5��Q_��}Fq��*P���RJ�����iߎ#�M#��2�j���Fn6��=wƒ�s��R��}��a��� mb�,F�6��V�G�6�j�16��~�z���d�b��v�<�\h$6��VR��d�p��(��<����K�����~����_���+��=;B`��#�fc}���-1��-=r�<�f��W��2�(��h� I��`���?yeJ�	�8�I��8�'�=��BTbQ*�[]wa�Wa���9�-�C��T��5D�D��L�nK!��sKR�rg���k��9k�2��������B���5�s��wb�2 7�\��\�)��5��9 ��ѩ\�f?�M|d�S�5�l��7�}�q"]2�V�W�e~�g.���<�n>���#�rq�b�i����i�JA���DٴfF�Hڤ1ƼH��T�9ޙ)ɻ$�pp�����(�,�����p8��^�      ^   |  x���ˎ�0�5��A��#�bf�4;�fHluC vb�I���a�iUu^�RwG����9�����w�F�� �g}�\RZR'߀��fE�ߘMja�76�e,[>]�t|h��ͱ�/9y�o����+h�F�C�WVF��:\(_y7O�*B�N�m�")�!?ː�>(9=f�I���U�_6��+E��W�/i�Ѳ�ǳL�k����ζ�}
�j"�e	���l��ˑG��n����~Pf�jzPhQ3�~��sy����Ox�GH��;t@��'��	�@���\��M�z́�U������]�������{�S��
��:W�+wU���,I�}��o�#7\�?�32��� 32��Ԣu}Ƽ�����,��]DH�i8��o^�3����|m�������j��ͤ��-�e�uv���fn>��v��JNW����5Z��ݗ�v8�����^�Fi�t���an<�F�PX�B��ύ?}#~��Љ��XmO��#�w�`����q��M�uSs���6��o�t2JoN�|)���#�L� q�^ �Zr����,Ӭ���RɐAn���������m>̏1"[e�:��6c��+�!btg��{xx�iĲa      t      x�3�L�H�-�I�K��Efs��qqq �<	�      `      x��\�sU����󰵛T��/q�˓��P@vX��Rm�-��խ�n�#�l'abؚ%0@�Lmͮ"[�l�r��C�_�a�����}�[ݲ�y؝�RQ�R��|�ߎ�r�fw%ڏ:�^�n�����Q��ҽ5�m�fw%73��aU�h3�㯭�Ꟊ�z�:�+��Ԭ�zNA�:������m�V�h�
kw��155���=l��&Ξ�QX/�����Q�ݨ���*�"�*z(Z�(����޽�Y�vkXq�os��ڭ����Ǖj�Xe�����ۊvT��]�=0|�'`"�8��&v9�)�����jx��-����+z, ��â����g�n�F`���d�m|و�uP�ա3Ƌ8���������(������m��0�a�0��h�{'�S�A|\��+Fp�=:6E�>&�34 �A��3n𔦚�J���d,Zg�i:�(,HviI�qZ��];9����K�G�2��r��نl%�h�9����0o�)t�m����mSYx�.�KԿCKu�J�K`���#�D8B��)sa0����	Vܢ�3*���p�UY(#�D'l��W	,,���}Ŝ��$�d�;8	a��M�j�ڶA��'��0���D_0��"O�($W�g��Y�Z(Z�����gϜ�M�O�=9�3��ω�_�J��/��\V�r�� �m���c�ĉ���~m���g�~�O?~���G�s��0�RW,�d����n�߯�O?tBţ�c�ݳ���36�:��=�U/V�*t�����~��4X��l���<���5_	l�
�b``A-x>����ء��i$��}o�l�5lS��Wl� �,X��UPf��E�.�+ޒ�#��[PM�ƪ�m��+�h��NL@�4fr|c�-��� T����P�j�+�]�l�N}������Q��ղeC`#�̢E�LL˱�i'�%��m�G\��^sm�X*�CǢ�4orkco�ƺ�x<�N�T�A�Z8B`-YX�.Y�y:�o�L���0�]˾Xngw{��E	�E`uٷ�ˀFU��n���A �
l��=?S��Q��=	�e@b/��A`6�j�
�l�D�M�����ǡB�3u@��%";�[�K�x����>���/<��M{}�dԤ��Y�tF�A�-|�����@��/��n�х]͒W>J�f��Z��UZ��U?Ϊ����
YI?2r9��>�5����]�E��i��r��3�U��x����Of4����/B�BY����ڹ�o��O��i�4��Tjg��!�r@I+01��A�ާa����/����n�$�Ixz���1�ͪh�<��4LJk�I�NE�F��f��`^�� -4���DHh�����l�&F�} a���vG3@�9�#=@H���
)�+�V���p��]c�0��U�a#>�J��1MG����X�1� &D�!6� ��M,u�B8ް!�]d۬3E,�z��wHc�c۬��@�aѫ��h1y�EhI2�Μ4X�eQ,��A�[����Ȫ0,��f8��:���-"G�C]3�=��&�3-�;��~�̒�4�k���T"��,�5��1�z�i����i���m,=ui4��ӈ�o17�!��5Ŗ����S$���ҿ'ک�kf��~�tBbIc̴{��k�{G*���6q�l���0}=6q�~ޡc���.֡�V�G*X5	y{�,��[��ݴQ�u�n�	ɛ9�]��.	��]�}�6�B�
2��ѿ�1���bՙ1n���D�6y{<2��0
�M�%h�7N�Ev3��4�X�Դ۳N<|�O�C
���1�6�����9�D+�ؽ#����[�^#�4�$��cvO�V�@�Z��"{��lp�kC#�l�F�.��Y0���(u�:���l��@��`�$ѧ�(�\���*؈�8�DT��-|
�e���7�`�{��-w��%D!���02�)���z�.E��nP��m���|�XUV(#T��I���T�=�Ec!BD/�ilk��`���ͫ�t����8��s�5�x'��B�I��^���H#l&`�^	� �vTP��R#\B�<� ��9e�1�|5�'g�Io'ۋ�B�P�.�U��']t:�a���ێ ��K�l[��Y���y�8:�ŬPS� �;��g#"��H��Kfh�p�	.��v�y��9 F<�f�f�*U�,��-�.�^q*>�<�vI�/�O.�<�:cz?�)z`��K*����b�v��]ki_�cT�H	ڪ<Ϣ�cCm�]���6tц.�_��Ɩ&�g��/�02I+ъ9�8J&KD�����j�T�ڴ�Uv�h)��O���/��k&� �{=�79��CV��;=�Ή��Sq� ��]{�R f�D�t����u�,��q�s��&��C<ԟ�bӔb�&Yj�kq����E�1�ԉ�'��82a��5B��:L]�:Sy���,��T�>3�~�Ǭ�ff����&Ka#�b,���5z�Q2�d	W��k���gl2�6u�����D$�8qE�U�$�����ŷ���"-�&rAr$�Y�9˛<gG,�*�����	���{Y���g��L�d�� �b0kj�����xШ�����2*I�7y��bh�����7��=�:%1���n�����4�c�xG��8�cb�3��,����/�^�6�X�.�-���HWҐ�NBF��$��Z�z�>$�d�Ͻ67<J�P��n����O?r���g�����>�K�WM?�=d��Ij�qɓB�����B����%����L�WK�AD<�W�s��qʢE�ѷ9Π�Ւ�9|"~�Uh�T�
�kqq�/��
�t�4�P4�Xʷ�`^@�ǲW�8�,_q(F@����LD.a�V�؍�F�L�f�o����9U.@"���s�R1�T�,��ƵX����q�\���:�b(\�-���#��7�z��16�/C�2�/C��e_�����52�+�aWZ��7� 4��I��S�<�������lG��K��`�3ɢ�LR�0�W��~�ԇ2M%��'�V8�`�{�zbڊ�a����u=���z$Tq
6�QS��τb;�ʟ��#&�$K�d�C����Mb���;�oRD��S3���6�.Bɩ<$�<!�N�h�N��R��߭�O�ri�`�Xo�$��]Xp�����Sϫ��Ùęɴ���X�%Edh�`y�I�.�`�l��M�Ӥo��Y�Q��1�̏1p�����^.���9�	$���֍����
�4���7i�/�QP��)��EZU�|I�h��v���F�B�s�a91=��C�ۓ�O��Mփ?�|�M��+��9Ot�mN ����p��i�!����Z����v�o�u]����ǎ��1Ç}U�i��p�R���������=�,X��B�����l�[���=- �x�~����#
��|j3��NA-/b%�C���>@n�+�U���;�b�Ei����Wսܴg�l�ݰ�;#���2�e8��Em8�e��ݐ�,�G��QZL�\.�5Ё.z�B%�2�SR9!�z�^����\�*'ڇ���~�t��V3�~q���l��.�\�%��Țjqъ�?S����5(B�"U��<�j�TI*�8�K�!�}�D�J�j~��E�<���cV�%���+����*.?���ˋv�+GU����	`�`�;v�(���r���e2�J��2�<�02�$;@���%5�@�B�� 9@h�
�	���Xӟ��ȕ���%5a��J��h���Y�� �[��_6)� ��Xf29�#C;�fG�U�[�Y+����Q>G a`��h'7=�z�dv��y\���B���c�f5UW�!t��ZqOO���|&��*ud��pp`��s�z��1��8pJ�x?�t9st�RKgO�}pE���'ǵ���g��S�ˑ�( �ְ�.�Z��7��T��H@D0��7�12�FI��Q�2��n�4<1�9�k{���UW�@]�:�R'6��J��� �  ��Rne��D��Z�{G∷�����T��*�����9��>�
V�FG*K�H����9�u.�iL6�X��^��%>��\�b�����.7?`��D����F,��jI��t����Y����2����ә]#��U�̎z���&����]���5@C��%��4mc�'x���֜;�4�A�N��jmrJ��w�����ekޯ�~Z��zf@9ic���p'���I�f�Lqq4�y����E��>��^0��C%$�ɀ�S�>(;����I��(��K���I^IP����ZX ��h�����%�@�Q�&�֯ʎG7|�C"��]A��V�nb'.v�8Wܩě��n mC����t7���r1&�2����r���zm��f�� ������;r{�����v"�G��+��_-T����.��cC6�aC6�a��6L���_E�}�3��s��0>�Mg���L���Ϲ��-2��Hk�W킃�{.���̍6�5|Y����_�F!�|Q�����#��j?]aVT#�V�k	j�F�^S�1��+Ve��@<���+�B�y��J#Q-Z=F��z߀J�����?�w�Z�V+~�[�8]ג��#ދ�5z���ߍz���(O��w/قɣ�N+�ʒP��`�R�t���7��t�ѓ)��2ji��gy(x��"j�d��"��N�5v$�LX,���9|!-S
�YE���"<�:�1�����Z�����:�ߧl�~�n^��Ⲕ��e`�����U?o�C���P�J|W���,�⼾�����&͡ݍ�k/�~��3Ү}\��?*�Ó"1�]���"��2y�Am�������=���5��;8sV�ڒ��B�V9�p�2��Պ�Z�M?�'��	��@��%��AuJ��{��W����=�4^8n���ϸ���P����_�{������?���
�9	��01MI��j��[��"�i'��3�j�L�m���}C��N��`W��N<]S�����{@�7t�D;���y�����Ks����[���~O#�2�voS���/5h���[��/✓畎��^:3t�͸�G�n�)h�� E��-�+>����=>�z��EhS��jHO�����n�g� ԙߒi�%��l��h��~6� a���O��m�ꗴA7f6~��Vrk��ze�˻������
��m���=q�{�ЪPx�w>0��-���^��v���
o,��:rwE\ ݒ�/��g�D�����g��ť8���GyG�ж�>��F���Vu�l�0�-�#�V�:�X���|�E^fʥy�XB����^�@��y�sT�c�%�-�=ߤE5z�%I�B�u���[����L꬗Hֳf�^&��k7�S�贍8�l2�;�L�")���n�c;��fC��x���ꎯXP�K�|b6��6H/
����E(���%c�a\���;th�CM��g4�� ��&
��C��}�8Ⱦ��ؓ�	��x�ֿ�h$R�O;�Vm�u3ؘE��Pz ��P�z
w��]�.;1��oT`ךt0��n������Iߕ0AJ6E�� 4�9�ƝO}�������AIK���z��u��5zY�>=uR׆I�_'�.JF'�^����_�~1�2waN]��z������Ej������n��i|���!H�ר�*���!��0T�=t�/)���������W}גu6>�0��Y^<|E�wu���	�b%�Q���q.��"NQs�D�,�c�)����<�X������X����7�8��v	{/ٔ_�̲������Y��dA�����j��!��l��q�v
����/�# ��J�XQ��
`�\��_0�7�g$?J5l0�^�B����Н3�
�q�~bz\*
cCGi�(���4t�����SGI�z:M@�]�
F�� ߯z      b     x��V�n#E>;OQ�)�K�{��m�		u��ڙik�'sr�Y�ĉho\g'�Ki���x����N�$Q4���ꪯ���ϟ4�{?��ꝿ��vt��o��E]����'�X��_6�T�a�������zS{l�q闾ܝ���e5����l���S6)��c�~�^�Ǩܺ�Ug~Q�Wg�èh��Q"Wb��s�K���;�K�-i�-C�T�ײ�Ʀ1a����g>'�:�N��;�	<�ʷ�v��k��
��L��Q�;��K�[���N�@h�v�R#�ѧ�rm���x �p�{�$��_�8���yj�^��tcA���w
8�"t.�A�g\��l��l�l�����V�`�&�P��쿮O��?U�.�LZť���#��##ۧ�p�����}?9EH^z\�)�� $^u���t4q��1(�p)'{�z�r����(�qxX�_q��j�����g�KMRQf���HwH�x9c���SM6���W�4�d���d��H��kӘ�.����y��&}:Щ�I[g���Q��q��6/��VY�2ga�����c��:B@|k��a�A(�l�׀����{}�5�%ۭ!�X�t֢�}��0DM=��iI��c���C�l�tP���a
�#�yJ�N2��ʅ��x��6��~�$:V�H�oSG(�)g{��R,�u:�(�]x��Y�^1n������g.T0��ǡ�&��Tgy�8�ZϜ�̙Ϝ�q��̍٣�({�6^~�`k�ԑ#2q�
,�tM�������n�m�}��;�uA�x�m)�J��k����0�A�گ��w��Y���C�����1�E�� ��7:����Ÿ��Q��r&zٟdL��X�J{��<>b̄ě�L�*M�D���f�1� �S�m���(��L$�4��&��I6���Ӻ��VÝ|�܇�A��k�8��׾�K:��Cn��*�``��!KR-Zi㡈�(�7�I�LF|���%�Jv�7~�R�e.�A�u������w-&��K�� S�*f��.8Fe��Tn�|��A 2�b/�������������	�s!ւ9'��K����)_µ�8g�WG�+�[�}�;Qy��u�w�F$#tb�$���2/��ͩ��:�u��*`"� 6Uo�wF=U*�=�9�Z�FM�/Z�5�|�DEX��ϷE/�������׳f�$��P����p�pW��p)����vD���=�Ћ/[{{{M$�I      r   �   x�3�L�O�K)2204t�M���+*弰�¾�/쾰�bㅭ�r��q�efg�$rqa�Q�Z\������W��ؘ�b#�&D������i�eJ�Zsd���y)� �`i�ļ���"��J�C�� :M`N3����� y�d�      d   �
  x��Y�o��?����:(�n��EO�m}�e��P��#�5�Q���{7N��AA���ڢ+(�%Kr.�O��%��7C�v�Kۋ�ل�Ἇ�{3�7O�7����gŤ|�z��#; ���r��]��{Ÿ<l����������g��]{�X����|syq�|�/���X��Q�B�Ť���D����/���54U>*F�f���������2�-~">,�FO�{����ż|�h�`��#��{-�7P5/�D�My��XSq���oQ��F-��-O��$|�����S,�	ߔ�Q�O��R�G�eAS,yb�)���B�Y1���]�_����vC����}RI�|x&l��|�d���Q!��cH���AX�9BO�4�d3Y̱�#@���M�L)�8�H�M�?�1�.��峦(���Y�r-��$�1�`g��|FN��X����S�hŤ��u��a㞰�F�S!�/3��f(tۍ&b���ȺJ��*�ue���G'����4�W]�*^1F�@�a'Q��4��*^/� T��D$��4���q��X%��I b�fP�)h�fW��B=���22����H?S&L��OE[k��S��m�gM�+6�f]��f��Y�ECѕ}�z=(H�Պ��[��R4&��C_�hᝦ�m��FGp2�ź�{l
r"�y}x�6:��H�i�˨�ζ)��%)�*�J�($�i&���UP�x�W��+�-hF�r
M?Ls(T/��|,�YW�>z����Ku�M��.��bK�FW%zF�%伈����Ab-�R[�1�y#�>eK9܈>Σ ��<�,6��D*}�+����� R!J�B�N���������_���jq޸�(^a`�xLk/H��
��W��6A��C�V����w��0�gM!yڭnS�3-N��&�
R0�Z�qL��䂣��1���M1��#�����HӖ�`�&��_C���n�=��T��W%H���1�]�i��3�_C��a!9���sy#�Dd8�|U�#��x�s��v�"��)�c3��W���l^����C�Uږ/ʯ��&�:;;�P�μ��B�"?�n��Xe��μ���بtl�ypL��8��d��"|�g��Y�aS�t�6�ٴY�o~�t�p���dG'!�VS���8�T��ZK��xQi�ǡ�c�+3�{T�"*]~�
�EGT�=THT���]�����^wh�]E.���62A��
���)j�CY��sC�eB��W�<�'e��N�U�*����򮃀
�\Y�m�� S%\�VE�	DQ@"E/7ifNBN���ڊ��G%rD��`e�����i�%"��J�#Pkb�´�be�GB+��?%p�{A_�c��/�c��>�dD���7�#�����lIQ�)X6�B;�`I��eD܈��aUƩ��i+P�O�D2 ��r�'S���r�xc�'�L�x ���ht���,!��|XU+�Z
�$��i�K����G/���0�+e��hˈ9�'�HK3OZD������6��%N�ʘAh��1�"����.Q��.JP?7̇��Ar4�E�l�<�t�RpJ��H�* �~���`+`3h����`a�m�Ҟ��u�E+��*־J֔���`�Hi��8vGfL�i�"�ڍ�K���iƛ�)�j��@���x[�O%�V7�����5�0I�=�k�b{�)@n�s��t�y�7�<����	�=��,?��j�<��'��p�qbYg�g�e�D��{�`�	�#k�ni)����Uv�)G'�J���"��7¦:�y�����q��h�Q饻3pb��*j�g6����S�6��5�Ʈ-���v�ӏL��i���%���]�1�:vOas"?A"������vlЭ��F���X�9(�����![_����讯G�̀��ʷ2���g�go���$|s�q�'�_B�c5P��,�k-�:����zǻz���^�MV2\=��-ܛYϪ�.i�]?Ll���ďj@ƍ��4(�y$M4���+EkȢ�kjꘫ�����&Fl�%�����yd��*"$T�T?̨.{�LHM�0�V=�Zw�1��?�Or��K��� B$��j2d6o�ۃ��=��-�6~�(^[��{a������>,�wul��L�y�w��U�ifs��%��\BoU�	Z�u~ǣ<{�Y� 8?�k_��#�e�p@;��Y����p�����K�*�~�d�X�������O��Gp�M�pY1YV�#K��mK�2�i�LT��kp��S��0�W[B�wCC�Վ{h :tB,y�O�|z���X�M��G��	���:����^o�gҔ	"��V}�s�:G��sg�=7l�" ���[��t��aN[퓜y�u����z�O�s������KHmS6�w�'*�lot^�%�rS�v�;<>��W����s��Ǝ�P��P�p�E���~��F"��Ч"fi��_��n��A����k�SO�~`@�I�?7P�ý�)~�ڸ����-aU���=�b'��wXl�+-���C�����7�m��.������^�_���R%���(De�%6V�Mώf܏YE���^ax���O+�A�G2���7�`Ӷ���H�3���ut F�s'�_*�\�N�֟p���%>#�!1Rv�wp�b��ph�{�t�f|�q��g��Ȏ��h��I���Zt��=�o�ۃ�<����?4766�����      f   �  x��Z[o�F~���P���q�7'iҺ�"�M�(�ɱŚ"U���>�NӦp���-�����ڎ�(�/����/�/�����t�b�Ѕs�Erx�\�9s�3:UJ�I:�J�+'K6�a+�OWJ��'E��t�'�f�����Duj�*��>�o��S<�K�XC�q�o~�체.�' i5]��=����fXM��	�N|����WW�=������ʧb�ib�݄N4�B%��զ�������N�0�b��t���K�|{t��~�ޫ�䯤^z'٥WH�U6�Q��)7���r��=�	��h��&OH���� �i\��ޢK2�t��.�c`/�?������ ��6�29�������;`��Iƪ	��@� �&d�A�{�2
�H����Q��*�C恉a��I�h��~�)��&��q?�
E���ց�.؅;%(iB�J��>��ݧ�S �j�8Ԫ�� � bo2��M
��mBOt�h�L��b���m<��$�oY�U����fȩ���@�񡆐v֛�>�ρ���C<>�[��"XZ_k��zB�7�Kf���aO���]-Շ��-�'4���^�dO��|F*h ����0��a�RjK��N��Q�%|�D�
+o5J���.��.ת�����S���Ʀ&'JMze-�4_���q܌Ξ<�n�+�A+nͩ�4N�ƜrN^��q�|���?�^���ϑO%��x�n�е�/ !�صE[��	eC�y�k��+G�-�ˮ]����%�a�l� 7��1��Wa�^�+��n;t�X�4�*�����!mU/�"�e�s0=?�){�/�XᎽ�����%f��N�Ǿ�cK�o�Iq)�_3a�ׂ��u�U� ��x-p�46��'m�1����Wĵ��v6C)������-���/=vĒ
#\�`^�xkF6��w��ci/
<)���M1	Ť����݊Hi<�����H�B6\�E{J:��q��zK�1�6 5d\����A�����w]�r���,�;����rx�hb�4� 	�tNI%p���<]l���l>���Gj��{����ԫT��"�p�-g2vGkBi�{���K��ѝ��σ6��*��NJ�y�%ߐ��E�=ۡ�w8%܃K��B�J@�PV9 ���������0&����T��4��G"	��8��#�hU}GV����0An��d�����޴`�!7l�O�W��N�����Nɜ�e��~��^��g��n+��.�'Z��=veGg$h��)�.�;�"�3���u�>P*4��^1��@+�7H�Gfu��k�2��o�̿����~�Z�"�Vs*sJ�Z4�6�]�e�~k#)Dt��)_�y�dmN81�����GtA1�k��$���wڥ�v�ŧ�o�/F5��(���� �k�C{īl���ŵr�E^e�ٷ{Y���/2��;kG��#y����hִ�ņ(��tR�@%K�y��~Jct|Hm�3 �qn	��� 9��MI�PWxeO�耲�`����|�]O�һ
E���F�~�!��=���Ч��ͺc�����gl��8�e�)��B�Y��%�~E���� ��TR�d2\�-4�6'l�Q�L:��³�F=��[��5���!zĕU���{��a��`T�*Sח�gky�S��0�\�,��T�j��LT�Ό�:5>Q�nԞ��\.Ͼ4_������:���̴��*{q������K#�R?�j'4"�2:ٮ�mէ B�_�*�Cx��Ȇ��y���z ��1W���X�ݸ.�ckve��:�M��C?�1k����U�ZXP�%^q����6\/�)��bqE�P{Qs��∋���4`#�f���۔��e3�٬�z�Rg��B+Be��HP[����kv����b�9������C��u7��G<��v$fe(�h��ۣ}�N�p� m,/��(�3"`&��b��v���*�l�QKB
_�-AdPHg	:�~��YͲܷ[ \�-�eSEuw>&z�3�5�=��d�=�ܖ�� j��	�7�����^:O5Hj���0C"�qo��O�x�8���(��-�B�p=T�&�ώY��q5t\WC���q5��UC��gQ��r�\�U��U[\v#j"���	�}v�����x)�������v�\�t�#��j�Q?������-�i%�Y����.�f��`�c]���B͵�=~���B> xe��a=�o�t��5-K�(ɱ����S�.�0j��(ґ`���g�̪����V�6�լ�w`L�{��SXF�t ��&P�a��fŒ?�"��dORyE�zy�~�Ѭ�Wl��2�΂"��ք�d���l�S�۳[�U+��m�0#n���=z}�<M��MX��	pџ9���ώe�}_%�<�]X�V��V�*d�U�̃7a0��c�xS��b��&���Ԥa'��3S��ӧJ�e�F�s𓉅�ՙ7��f�<?9�0��1p�Q�Q���A��1�×������8>z�µ�+��Lzr�)j�5�Lpq*�D�x�R��?C����)�*ӷ�8�8���`�B��Ņ-�̆e��
�Sx؊�(̭�2��ot��EU5ˉ09HV��#r��z�[��}��nXdo���W2n�4Gy��>���n�(�hN��9�zYB,H��%�1?c�w,aY�[N�iQ|�چ�s$uA5���1��dA�j6���H�0_�&R����DH0LP�e���'2DF|����!��m�����D����;�L�8nD��+�	�8�������-SOeU�h>���-�ti���Ef�a-tm�n"-o����)T3�+p̜�����q�<��	�������#����<��X��'����)�#����ʿ��Y�yBG���>]ۦ�A����e��E�8}?]׌hx���Sb0��LD��=M��ͬ�
0�i'�zfM�����'D���p��W�n�mh��,�=Got�I��As��v�F�7� �����̠w�}�TN[?�����;��'�qH��ؽ=3�uo���X�v�tZO�4y��d��Y��9
������k��[�Q���o˞v[����Z�������k�B�S��sAH}��h/~��ƅU+�����n�	�G���m��Ԗ��j%��RqARE����{\���,��-��&}Sg�E�I%�Z��P�a�_�����}���ԑɌNpa�Ov
�]E6Ղ$����%Gc�qq��%�Y�}��b+t�^7����#Mo��T����_���Q��>�Wo]�-���;�n�<�0��x�R�Z�ܹHO�E�pH����A��J2n��Ucآ�Ӹ&�6�C�Q4�r�ߏ��o8���c�
M��u���:�~'��;�<=��y�222���      h   #   x�3�4�4�2�4�ƜƜ�\&�&��\1z\\\ 4�      j   #   x�3�4�4�2�4�ƜƜf\&�&�\1z\\\ 5;�      l   '   x�3�4�4�2�4�Ɯ�@�Hs�r�p�p��qqq Kk+      p   (  x�}��J�@��s�b^�չS��+n\��Ri�2	]��.A�VA��p�F�i!9�K�a���̾���F^e#�C-���gy)WZ>��e��E�$+��4qit�-\�Ed���+5Pu<Կ��M`�L�����d��,��� )��~��ٓYWO�)�-��.���Y�/3߈���.�-�):�cwbO�	�,��N��S4Pr_w_�&�U��+nY+��%i\d�i��Y�`+N�.r��Á):ĥ��ɱ�)�bk�4��������4p)V�kC��3��FW���OD?	g�      n   �  x���nE�ϳOQ�W#��X�HH(
Bܸ�����������9�p�XI��8���F��wf7΁��f=SS��W�j�~ý���~0�:�i�����&��/�|�_��9~n���x�_�?�����g�V��v}��nNOO��j�|���D�AM_~�>�;�T�'M�5_!�U~�o�%���x1�����Y~Sn]S~�oi|��(��������'B�s�y
	Y㒴��u�<�N	Z��Hl�-+[bv�	�f߳�%�����$6��R�ңd�BH	���*dO>�@���d������҂(���[���&	g@���HAm$F��z-Z ��/�
w$KG�y|�N�b�)/)����"�tD}#�d GQp�$��Bd����L�k�eM��tT`�
EJ�X{饥�l��*�S���*�l����ז�X-]�qV�iΊ��'�s�SGULb���y�i|����e��~_o����?�ݲ�4�{K���6'���@�������ؼ�� |�~$�#AA�W^��?�5Σk�r��q��W���c�8����}�%[�9zXh�.������#Zq�����	�P��{�n9�� ʮԦ�r � �{F,a��6G܈R*.$�xT�V�0��ka���2�M�؃��)��D�,q|>�+p bf	�F��0O�ɡ���x��$5�bh��D�Z�z��ʪ(@8B�V��(�Y��e��x�.�V���6�q��^��/���X��6Y]����_�7X=Az@}I�q[8���չ�	��3�5����5,�9�p�@P�P�U����܈����3�?���-l�
��6*��l�U_�֥��?%��s&��ͫ�q$_�{�-X�n�!�N�S�e�9���l�� �
%�Ka`�Iу� ��;l%dݟ.s���/�����d����*/aK?[
�mso�C�X,��rz     