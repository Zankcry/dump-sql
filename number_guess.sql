--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 2);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 3, 990);
INSERT INTO public.games VALUES (4, 3, 887);
INSERT INTO public.games VALUES (5, 4, 85);
INSERT INTO public.games VALUES (6, 4, 603);
INSERT INTO public.games VALUES (7, 3, 616);
INSERT INTO public.games VALUES (8, 3, 1);
INSERT INTO public.games VALUES (9, 3, 794);
INSERT INTO public.games VALUES (10, 5, 928);
INSERT INTO public.games VALUES (11, 5, 824);
INSERT INTO public.games VALUES (12, 6, 305);
INSERT INTO public.games VALUES (13, 6, 485);
INSERT INTO public.games VALUES (14, 5, 709);
INSERT INTO public.games VALUES (15, 5, 1);
INSERT INTO public.games VALUES (16, 5, 100);
INSERT INTO public.games VALUES (17, 7, 256);
INSERT INTO public.games VALUES (18, 7, 166);
INSERT INTO public.games VALUES (19, 8, 461);
INSERT INTO public.games VALUES (20, 8, 203);
INSERT INTO public.games VALUES (21, 7, 817);
INSERT INTO public.games VALUES (22, 7, 1);
INSERT INTO public.games VALUES (23, 7, 140);
INSERT INTO public.games VALUES (24, 1, 1);
INSERT INTO public.games VALUES (25, 1, 1);
INSERT INTO public.games VALUES (26, 1, 1);
INSERT INTO public.games VALUES (27, 9, 1);
INSERT INTO public.games VALUES (28, 1, 1);
INSERT INTO public.games VALUES (29, 1, 3);
INSERT INTO public.games VALUES (30, 9, 1);
INSERT INTO public.games VALUES (31, 1, 4);
INSERT INTO public.games VALUES (32, 10, 429);
INSERT INTO public.games VALUES (33, 10, 77);
INSERT INTO public.games VALUES (34, 11, 967);
INSERT INTO public.games VALUES (35, 11, 17);
INSERT INTO public.games VALUES (36, 10, 825);
INSERT INTO public.games VALUES (37, 10, 912);
INSERT INTO public.games VALUES (38, 10, 996);
INSERT INTO public.games VALUES (39, 12, 598);
INSERT INTO public.games VALUES (40, 12, 566);
INSERT INTO public.games VALUES (41, 13, 426);
INSERT INTO public.games VALUES (42, 13, 159);
INSERT INTO public.games VALUES (43, 12, 869);
INSERT INTO public.games VALUES (44, 12, 503);
INSERT INTO public.games VALUES (45, 12, 302);
INSERT INTO public.games VALUES (46, 14, 766);
INSERT INTO public.games VALUES (47, 14, 219);
INSERT INTO public.games VALUES (48, 15, 435);
INSERT INTO public.games VALUES (49, 15, 937);
INSERT INTO public.games VALUES (50, 14, 476);
INSERT INTO public.games VALUES (51, 14, 81);
INSERT INTO public.games VALUES (52, 14, 71);
INSERT INTO public.games VALUES (53, 16, 939);
INSERT INTO public.games VALUES (54, 16, 82);
INSERT INTO public.games VALUES (55, 17, 631);
INSERT INTO public.games VALUES (56, 17, 805);
INSERT INTO public.games VALUES (57, 16, 49);
INSERT INTO public.games VALUES (58, 16, 720);
INSERT INTO public.games VALUES (59, 16, 346);
INSERT INTO public.games VALUES (60, 18, 419);
INSERT INTO public.games VALUES (61, 18, 512);
INSERT INTO public.games VALUES (62, 19, 622);
INSERT INTO public.games VALUES (63, 19, 976);
INSERT INTO public.games VALUES (64, 18, 205);
INSERT INTO public.games VALUES (65, 18, 186);
INSERT INTO public.games VALUES (66, 18, 212);
INSERT INTO public.games VALUES (67, 20, 805);
INSERT INTO public.games VALUES (68, 20, 818);
INSERT INTO public.games VALUES (69, 21, 231);
INSERT INTO public.games VALUES (70, 21, 203);
INSERT INTO public.games VALUES (71, 20, 827);
INSERT INTO public.games VALUES (72, 20, 607);
INSERT INTO public.games VALUES (73, 20, 491);
INSERT INTO public.games VALUES (74, 22, 47);
INSERT INTO public.games VALUES (75, 22, 405);
INSERT INTO public.games VALUES (76, 23, 629);
INSERT INTO public.games VALUES (77, 23, 186);
INSERT INTO public.games VALUES (78, 22, 23);
INSERT INTO public.games VALUES (79, 22, 453);
INSERT INTO public.games VALUES (80, 22, 35);
INSERT INTO public.games VALUES (81, 24, 793);
INSERT INTO public.games VALUES (82, 24, 600);
INSERT INTO public.games VALUES (83, 25, 791);
INSERT INTO public.games VALUES (84, 25, 295);
INSERT INTO public.games VALUES (85, 24, 619);
INSERT INTO public.games VALUES (86, 24, 351);
INSERT INTO public.games VALUES (87, 24, 737);
INSERT INTO public.games VALUES (88, 26, 350);
INSERT INTO public.games VALUES (89, 26, 397);
INSERT INTO public.games VALUES (90, 27, 660);
INSERT INTO public.games VALUES (91, 27, 753);
INSERT INTO public.games VALUES (92, 26, 973);
INSERT INTO public.games VALUES (93, 26, 531);
INSERT INTO public.games VALUES (94, 26, 544);
INSERT INTO public.games VALUES (95, 28, 4);
INSERT INTO public.games VALUES (96, 28, 780);
INSERT INTO public.games VALUES (97, 29, 186);
INSERT INTO public.games VALUES (98, 29, 424);
INSERT INTO public.games VALUES (99, 28, 753);
INSERT INTO public.games VALUES (100, 28, 708);
INSERT INTO public.games VALUES (101, 28, 408);
INSERT INTO public.games VALUES (102, 30, 710);
INSERT INTO public.games VALUES (103, 30, 65);
INSERT INTO public.games VALUES (104, 31, 6);
INSERT INTO public.games VALUES (105, 31, 858);
INSERT INTO public.games VALUES (106, 30, 359);
INSERT INTO public.games VALUES (107, 30, 622);
INSERT INTO public.games VALUES (108, 30, 143);
INSERT INTO public.games VALUES (109, 33, 913);
INSERT INTO public.games VALUES (110, 33, 374);
INSERT INTO public.games VALUES (111, 34, 452);
INSERT INTO public.games VALUES (112, 34, 402);
INSERT INTO public.games VALUES (113, 33, 645);
INSERT INTO public.games VALUES (114, 33, 988);
INSERT INTO public.games VALUES (115, 33, 732);
INSERT INTO public.games VALUES (116, 37, 278);
INSERT INTO public.games VALUES (117, 37, 63);
INSERT INTO public.games VALUES (118, 38, 263);
INSERT INTO public.games VALUES (119, 38, 226);
INSERT INTO public.games VALUES (120, 37, 138);
INSERT INTO public.games VALUES (121, 37, 546);
INSERT INTO public.games VALUES (122, 37, 345);
INSERT INTO public.games VALUES (123, 39, 824);
INSERT INTO public.games VALUES (124, 39, 920);
INSERT INTO public.games VALUES (125, 40, 109);
INSERT INTO public.games VALUES (126, 40, 866);
INSERT INTO public.games VALUES (127, 39, 838);
INSERT INTO public.games VALUES (128, 39, 51);
INSERT INTO public.games VALUES (129, 39, 232);
INSERT INTO public.games VALUES (130, 41, 146);
INSERT INTO public.games VALUES (131, 41, 124);
INSERT INTO public.games VALUES (132, 42, 357);
INSERT INTO public.games VALUES (133, 42, 890);
INSERT INTO public.games VALUES (134, 41, 198);
INSERT INTO public.games VALUES (135, 41, 891);
INSERT INTO public.games VALUES (136, 41, 430);
INSERT INTO public.games VALUES (137, 43, 85);
INSERT INTO public.games VALUES (138, 43, 631);
INSERT INTO public.games VALUES (139, 44, 389);
INSERT INTO public.games VALUES (140, 44, 733);
INSERT INTO public.games VALUES (141, 43, 220);
INSERT INTO public.games VALUES (142, 43, 886);
INSERT INTO public.games VALUES (143, 43, 736);
INSERT INTO public.games VALUES (144, 45, 694);
INSERT INTO public.games VALUES (145, 45, 632);
INSERT INTO public.games VALUES (146, 46, 92);
INSERT INTO public.games VALUES (147, 46, 275);
INSERT INTO public.games VALUES (148, 45, 93);
INSERT INTO public.games VALUES (149, 45, 181);
INSERT INTO public.games VALUES (150, 45, 958);
INSERT INTO public.games VALUES (151, 47, 812);
INSERT INTO public.games VALUES (152, 47, 263);
INSERT INTO public.games VALUES (153, 48, 970);
INSERT INTO public.games VALUES (154, 48, 590);
INSERT INTO public.games VALUES (155, 47, 476);
INSERT INTO public.games VALUES (156, 47, 743);
INSERT INTO public.games VALUES (157, 47, 279);
INSERT INTO public.games VALUES (158, 49, 144);
INSERT INTO public.games VALUES (159, 49, 335);
INSERT INTO public.games VALUES (160, 50, 710);
INSERT INTO public.games VALUES (161, 50, 627);
INSERT INTO public.games VALUES (162, 49, 763);
INSERT INTO public.games VALUES (163, 49, 416);
INSERT INTO public.games VALUES (164, 49, 671);
INSERT INTO public.games VALUES (165, 51, 149);
INSERT INTO public.games VALUES (166, 51, 601);
INSERT INTO public.games VALUES (167, 52, 669);
INSERT INTO public.games VALUES (168, 52, 507);
INSERT INTO public.games VALUES (169, 51, 57);
INSERT INTO public.games VALUES (170, 51, 791);
INSERT INTO public.games VALUES (171, 51, 10);
INSERT INTO public.games VALUES (172, 53, 285);
INSERT INTO public.games VALUES (173, 53, 390);
INSERT INTO public.games VALUES (174, 54, 823);
INSERT INTO public.games VALUES (175, 54, 142);
INSERT INTO public.games VALUES (176, 53, 838);
INSERT INTO public.games VALUES (177, 53, 604);
INSERT INTO public.games VALUES (178, 53, 671);
INSERT INTO public.games VALUES (179, 55, 863);
INSERT INTO public.games VALUES (180, 55, 9);
INSERT INTO public.games VALUES (181, 56, 218);
INSERT INTO public.games VALUES (182, 56, 612);
INSERT INTO public.games VALUES (183, 55, 492);
INSERT INTO public.games VALUES (184, 55, 26);
INSERT INTO public.games VALUES (185, 55, 79);
INSERT INTO public.games VALUES (186, 57, 105);
INSERT INTO public.games VALUES (187, 57, 493);
INSERT INTO public.games VALUES (188, 58, 627);
INSERT INTO public.games VALUES (189, 58, 347);
INSERT INTO public.games VALUES (190, 57, 18);
INSERT INTO public.games VALUES (191, 57, 445);
INSERT INTO public.games VALUES (192, 57, 153);
INSERT INTO public.games VALUES (193, 59, 872);
INSERT INTO public.games VALUES (194, 59, 548);
INSERT INTO public.games VALUES (195, 60, 224);
INSERT INTO public.games VALUES (196, 60, 62);
INSERT INTO public.games VALUES (197, 59, 749);
INSERT INTO public.games VALUES (198, 59, 470);
INSERT INTO public.games VALUES (199, 59, 762);
INSERT INTO public.games VALUES (200, 61, 852);
INSERT INTO public.games VALUES (201, 61, 332);
INSERT INTO public.games VALUES (202, 62, 539);
INSERT INTO public.games VALUES (203, 62, 893);
INSERT INTO public.games VALUES (204, 61, 753);
INSERT INTO public.games VALUES (205, 61, 952);
INSERT INTO public.games VALUES (206, 61, 163);
INSERT INTO public.games VALUES (207, 63, 519);
INSERT INTO public.games VALUES (208, 63, 485);
INSERT INTO public.games VALUES (209, 64, 812);
INSERT INTO public.games VALUES (210, 64, 641);
INSERT INTO public.games VALUES (211, 63, 227);
INSERT INTO public.games VALUES (212, 63, 346);
INSERT INTO public.games VALUES (213, 63, 881);
INSERT INTO public.games VALUES (214, 65, 543);
INSERT INTO public.games VALUES (215, 65, 774);
INSERT INTO public.games VALUES (216, 66, 395);
INSERT INTO public.games VALUES (217, 66, 270);
INSERT INTO public.games VALUES (218, 65, 188);
INSERT INTO public.games VALUES (219, 65, 334);
INSERT INTO public.games VALUES (220, 65, 897);
INSERT INTO public.games VALUES (221, 67, 240);
INSERT INTO public.games VALUES (222, 67, 278);
INSERT INTO public.games VALUES (223, 68, 47);
INSERT INTO public.games VALUES (224, 68, 397);
INSERT INTO public.games VALUES (225, 67, 314);
INSERT INTO public.games VALUES (226, 67, 1001);
INSERT INTO public.games VALUES (227, 67, 972);
INSERT INTO public.games VALUES (228, 69, 15);
INSERT INTO public.games VALUES (229, 69, 914);
INSERT INTO public.games VALUES (230, 70, 562);
INSERT INTO public.games VALUES (231, 70, 326);
INSERT INTO public.games VALUES (232, 69, 663);
INSERT INTO public.games VALUES (233, 69, 374);
INSERT INTO public.games VALUES (234, 69, 846);
INSERT INTO public.games VALUES (235, 71, 880);
INSERT INTO public.games VALUES (236, 71, 327);
INSERT INTO public.games VALUES (237, 72, 809);
INSERT INTO public.games VALUES (238, 72, 570);
INSERT INTO public.games VALUES (239, 71, 163);
INSERT INTO public.games VALUES (240, 71, 366);
INSERT INTO public.games VALUES (241, 71, 797);
INSERT INTO public.games VALUES (242, 73, 686);
INSERT INTO public.games VALUES (243, 73, 548);
INSERT INTO public.games VALUES (244, 74, 522);
INSERT INTO public.games VALUES (245, 74, 495);
INSERT INTO public.games VALUES (246, 73, 792);
INSERT INTO public.games VALUES (247, 73, 865);
INSERT INTO public.games VALUES (248, 73, 223);
INSERT INTO public.games VALUES (249, 75, 847);
INSERT INTO public.games VALUES (250, 75, 345);
INSERT INTO public.games VALUES (251, 76, 958);
INSERT INTO public.games VALUES (252, 76, 109);
INSERT INTO public.games VALUES (253, 75, 306);
INSERT INTO public.games VALUES (254, 75, 786);
INSERT INTO public.games VALUES (255, 75, 361);
INSERT INTO public.games VALUES (256, 77, 471);
INSERT INTO public.games VALUES (257, 77, 402);
INSERT INTO public.games VALUES (258, 78, 303);
INSERT INTO public.games VALUES (259, 78, 455);
INSERT INTO public.games VALUES (260, 77, 985);
INSERT INTO public.games VALUES (261, 77, 449);
INSERT INTO public.games VALUES (262, 77, 131);
INSERT INTO public.games VALUES (263, 79, 374);
INSERT INTO public.games VALUES (264, 79, 934);
INSERT INTO public.games VALUES (265, 80, 314);
INSERT INTO public.games VALUES (266, 80, 442);
INSERT INTO public.games VALUES (267, 79, 614);
INSERT INTO public.games VALUES (268, 79, 925);
INSERT INTO public.games VALUES (269, 79, 621);
INSERT INTO public.games VALUES (270, 81, 744);
INSERT INTO public.games VALUES (271, 81, 775);
INSERT INTO public.games VALUES (272, 82, 385);
INSERT INTO public.games VALUES (273, 82, 92);
INSERT INTO public.games VALUES (274, 81, 708);
INSERT INTO public.games VALUES (275, 81, 894);
INSERT INTO public.games VALUES (276, 81, 304);
INSERT INTO public.games VALUES (277, 83, 616);
INSERT INTO public.games VALUES (278, 83, 886);
INSERT INTO public.games VALUES (279, 84, 412);
INSERT INTO public.games VALUES (280, 84, 4);
INSERT INTO public.games VALUES (281, 83, 736);
INSERT INTO public.games VALUES (282, 83, 187);
INSERT INTO public.games VALUES (283, 83, 445);
INSERT INTO public.games VALUES (284, 85, 774);
INSERT INTO public.games VALUES (285, 85, 463);
INSERT INTO public.games VALUES (286, 86, 813);
INSERT INTO public.games VALUES (287, 86, 242);
INSERT INTO public.games VALUES (288, 85, 157);
INSERT INTO public.games VALUES (289, 85, 615);
INSERT INTO public.games VALUES (290, 85, 772);
INSERT INTO public.games VALUES (291, 87, 788);
INSERT INTO public.games VALUES (292, 87, 410);
INSERT INTO public.games VALUES (293, 88, 938);
INSERT INTO public.games VALUES (294, 88, 930);
INSERT INTO public.games VALUES (295, 87, 827);
INSERT INTO public.games VALUES (296, 87, 69);
INSERT INTO public.games VALUES (297, 87, 887);
INSERT INTO public.games VALUES (298, 89, 87);
INSERT INTO public.games VALUES (299, 89, 991);
INSERT INTO public.games VALUES (300, 90, 866);
INSERT INTO public.games VALUES (301, 90, 235);
INSERT INTO public.games VALUES (302, 89, 88);
INSERT INTO public.games VALUES (303, 89, 478);
INSERT INTO public.games VALUES (304, 89, 839);
INSERT INTO public.games VALUES (305, 91, 668);
INSERT INTO public.games VALUES (306, 91, 757);
INSERT INTO public.games VALUES (307, 92, 788);
INSERT INTO public.games VALUES (308, 92, 719);
INSERT INTO public.games VALUES (309, 91, 979);
INSERT INTO public.games VALUES (310, 91, 596);
INSERT INTO public.games VALUES (311, 91, 83);
INSERT INTO public.games VALUES (312, 93, 935);
INSERT INTO public.games VALUES (313, 93, 875);
INSERT INTO public.games VALUES (314, 94, 903);
INSERT INTO public.games VALUES (315, 94, 854);
INSERT INTO public.games VALUES (316, 93, 671);
INSERT INTO public.games VALUES (317, 93, 211);
INSERT INTO public.games VALUES (318, 93, 115);
INSERT INTO public.games VALUES (319, 95, 570);
INSERT INTO public.games VALUES (320, 95, 442);
INSERT INTO public.games VALUES (321, 96, 560);
INSERT INTO public.games VALUES (322, 96, 932);
INSERT INTO public.games VALUES (323, 95, 241);
INSERT INTO public.games VALUES (324, 95, 852);
INSERT INTO public.games VALUES (325, 95, 797);
INSERT INTO public.games VALUES (326, 97, 985);
INSERT INTO public.games VALUES (327, 97, 484);
INSERT INTO public.games VALUES (328, 98, 312);
INSERT INTO public.games VALUES (329, 98, 392);
INSERT INTO public.games VALUES (330, 97, 910);
INSERT INTO public.games VALUES (331, 97, 450);
INSERT INTO public.games VALUES (332, 97, 586);
INSERT INTO public.games VALUES (333, 99, 347);
INSERT INTO public.games VALUES (334, 99, 787);
INSERT INTO public.games VALUES (335, 100, 313);
INSERT INTO public.games VALUES (336, 100, 322);
INSERT INTO public.games VALUES (337, 99, 349);
INSERT INTO public.games VALUES (338, 99, 949);
INSERT INTO public.games VALUES (339, 99, 569);
INSERT INTO public.games VALUES (340, 101, 545);
INSERT INTO public.games VALUES (341, 101, 590);
INSERT INTO public.games VALUES (342, 102, 473);
INSERT INTO public.games VALUES (343, 102, 478);
INSERT INTO public.games VALUES (344, 101, 229);
INSERT INTO public.games VALUES (345, 101, 341);
INSERT INTO public.games VALUES (346, 101, 72);
INSERT INTO public.games VALUES (347, 103, 696);
INSERT INTO public.games VALUES (348, 103, 236);
INSERT INTO public.games VALUES (349, 104, 494);
INSERT INTO public.games VALUES (350, 104, 339);
INSERT INTO public.games VALUES (351, 103, 38);
INSERT INTO public.games VALUES (352, 103, 981);
INSERT INTO public.games VALUES (353, 103, 231);
INSERT INTO public.games VALUES (354, 105, 810);
INSERT INTO public.games VALUES (355, 105, 964);
INSERT INTO public.games VALUES (356, 106, 427);
INSERT INTO public.games VALUES (357, 106, 381);
INSERT INTO public.games VALUES (358, 105, 767);
INSERT INTO public.games VALUES (359, 105, 130);
INSERT INTO public.games VALUES (360, 105, 963);
INSERT INTO public.games VALUES (361, 107, 518);
INSERT INTO public.games VALUES (362, 107, 645);
INSERT INTO public.games VALUES (363, 108, 586);
INSERT INTO public.games VALUES (364, 108, 546);
INSERT INTO public.games VALUES (365, 107, 295);
INSERT INTO public.games VALUES (366, 107, 659);
INSERT INTO public.games VALUES (367, 107, 175);
INSERT INTO public.games VALUES (368, 109, 148);
INSERT INTO public.games VALUES (369, 109, 800);
INSERT INTO public.games VALUES (370, 110, 500);
INSERT INTO public.games VALUES (371, 110, 941);
INSERT INTO public.games VALUES (372, 109, 579);
INSERT INTO public.games VALUES (373, 109, 524);
INSERT INTO public.games VALUES (374, 109, 448);
INSERT INTO public.games VALUES (375, 111, 511);
INSERT INTO public.games VALUES (376, 111, 125);
INSERT INTO public.games VALUES (377, 112, 518);
INSERT INTO public.games VALUES (378, 112, 844);
INSERT INTO public.games VALUES (379, 111, 467);
INSERT INTO public.games VALUES (380, 111, 637);
INSERT INTO public.games VALUES (381, 111, 247);
INSERT INTO public.games VALUES (382, 113, 54);
INSERT INTO public.games VALUES (383, 113, 237);
INSERT INTO public.games VALUES (384, 114, 619);
INSERT INTO public.games VALUES (385, 114, 584);
INSERT INTO public.games VALUES (386, 113, 886);
INSERT INTO public.games VALUES (387, 113, 406);
INSERT INTO public.games VALUES (388, 113, 462);
INSERT INTO public.games VALUES (389, 115, 82);
INSERT INTO public.games VALUES (390, 115, 506);
INSERT INTO public.games VALUES (391, 116, 947);
INSERT INTO public.games VALUES (392, 116, 91);
INSERT INTO public.games VALUES (393, 115, 822);
INSERT INTO public.games VALUES (394, 115, 440);
INSERT INTO public.games VALUES (395, 115, 527);
INSERT INTO public.games VALUES (396, 117, 188);
INSERT INTO public.games VALUES (397, 117, 504);
INSERT INTO public.games VALUES (398, 118, 645);
INSERT INTO public.games VALUES (399, 118, 909);
INSERT INTO public.games VALUES (400, 117, 46);
INSERT INTO public.games VALUES (401, 117, 318);
INSERT INTO public.games VALUES (402, 117, 627);
INSERT INTO public.games VALUES (403, 119, 767);
INSERT INTO public.games VALUES (404, 119, 891);
INSERT INTO public.games VALUES (405, 120, 793);
INSERT INTO public.games VALUES (406, 120, 991);
INSERT INTO public.games VALUES (407, 119, 916);
INSERT INTO public.games VALUES (408, 119, 493);
INSERT INTO public.games VALUES (409, 119, 819);
INSERT INTO public.games VALUES (410, 121, 906);
INSERT INTO public.games VALUES (411, 121, 10);
INSERT INTO public.games VALUES (412, 122, 679);
INSERT INTO public.games VALUES (413, 122, 686);
INSERT INTO public.games VALUES (414, 121, 681);
INSERT INTO public.games VALUES (415, 121, 215);
INSERT INTO public.games VALUES (416, 121, 638);
INSERT INTO public.games VALUES (417, 123, 378);
INSERT INTO public.games VALUES (418, 123, 12);
INSERT INTO public.games VALUES (419, 124, 95);
INSERT INTO public.games VALUES (420, 124, 498);
INSERT INTO public.games VALUES (421, 123, 215);
INSERT INTO public.games VALUES (422, 123, 449);
INSERT INTO public.games VALUES (423, 123, 618);
INSERT INTO public.games VALUES (424, 125, 740);
INSERT INTO public.games VALUES (425, 125, 790);
INSERT INTO public.games VALUES (426, 126, 612);
INSERT INTO public.games VALUES (427, 126, 409);
INSERT INTO public.games VALUES (428, 125, 591);
INSERT INTO public.games VALUES (429, 125, 395);
INSERT INTO public.games VALUES (430, 125, 513);
INSERT INTO public.games VALUES (431, 127, 611);
INSERT INTO public.games VALUES (432, 127, 593);
INSERT INTO public.games VALUES (433, 128, 872);
INSERT INTO public.games VALUES (434, 128, 106);
INSERT INTO public.games VALUES (435, 127, 507);
INSERT INTO public.games VALUES (436, 127, 802);
INSERT INTO public.games VALUES (437, 127, 366);
INSERT INTO public.games VALUES (438, 129, 552);
INSERT INTO public.games VALUES (439, 129, 822);
INSERT INTO public.games VALUES (440, 130, 889);
INSERT INTO public.games VALUES (441, 130, 963);
INSERT INTO public.games VALUES (442, 129, 434);
INSERT INTO public.games VALUES (443, 129, 239);
INSERT INTO public.games VALUES (444, 129, 897);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'james');
INSERT INTO public.users VALUES (3, 'user_1737190718633');
INSERT INTO public.users VALUES (4, 'user_1737190718632');
INSERT INTO public.users VALUES (5, 'user_1737190845794');
INSERT INTO public.users VALUES (6, 'user_1737190845793');
INSERT INTO public.users VALUES (7, 'user_1737190925265');
INSERT INTO public.users VALUES (8, 'user_1737190925264');
INSERT INTO public.users VALUES (9, 'James');
INSERT INTO public.users VALUES (10, 'user_1737191983414');
INSERT INTO public.users VALUES (11, 'user_1737191983413');
INSERT INTO public.users VALUES (12, 'user_1737192046656');
INSERT INTO public.users VALUES (13, 'user_1737192046655');
INSERT INTO public.users VALUES (14, 'user_1737192198368');
INSERT INTO public.users VALUES (15, 'user_1737192198367');
INSERT INTO public.users VALUES (16, 'user_1737192236773');
INSERT INTO public.users VALUES (17, 'user_1737192236772');
INSERT INTO public.users VALUES (18, 'user_1737192519217');
INSERT INTO public.users VALUES (19, 'user_1737192519216');
INSERT INTO public.users VALUES (20, 'user_1737192527821');
INSERT INTO public.users VALUES (21, 'user_1737192527820');
INSERT INTO public.users VALUES (22, 'user_1737192537678');
INSERT INTO public.users VALUES (23, 'user_1737192537677');
INSERT INTO public.users VALUES (24, 'user_1737192544211');
INSERT INTO public.users VALUES (25, 'user_1737192544210');
INSERT INTO public.users VALUES (26, 'user_1737192554355');
INSERT INTO public.users VALUES (27, 'user_1737192554354');
INSERT INTO public.users VALUES (28, 'user_1737192825307');
INSERT INTO public.users VALUES (29, 'user_1737192825306');
INSERT INTO public.users VALUES (30, 'user_1737192976691');
INSERT INTO public.users VALUES (31, 'user_1737192976690');
INSERT INTO public.users VALUES (32, 'Poopie');
INSERT INTO public.users VALUES (33, 'user_1737193018501');
INSERT INTO public.users VALUES (34, 'user_1737193018500');
INSERT INTO public.users VALUES (35, 'user_1737193148857');
INSERT INTO public.users VALUES (36, 'user_1737193148856');
INSERT INTO public.users VALUES (37, 'user_1737193373483');
INSERT INTO public.users VALUES (38, 'user_1737193373482');
INSERT INTO public.users VALUES (39, 'user_1737193426771');
INSERT INTO public.users VALUES (40, 'user_1737193426770');
INSERT INTO public.users VALUES (41, 'user_1737193475612');
INSERT INTO public.users VALUES (42, 'user_1737193475611');
INSERT INTO public.users VALUES (43, 'user_1737193498905');
INSERT INTO public.users VALUES (44, 'user_1737193498904');
INSERT INTO public.users VALUES (45, 'user_1737193523341');
INSERT INTO public.users VALUES (46, 'user_1737193523340');
INSERT INTO public.users VALUES (47, 'user_1737193541170');
INSERT INTO public.users VALUES (48, 'user_1737193541169');
INSERT INTO public.users VALUES (49, 'user_1737193571313');
INSERT INTO public.users VALUES (50, 'user_1737193571312');
INSERT INTO public.users VALUES (51, 'user_1737193585330');
INSERT INTO public.users VALUES (52, 'user_1737193585329');
INSERT INTO public.users VALUES (53, 'user_1737193610113');
INSERT INTO public.users VALUES (54, 'user_1737193610112');
INSERT INTO public.users VALUES (55, 'user_1737193618037');
INSERT INTO public.users VALUES (56, 'user_1737193618036');
INSERT INTO public.users VALUES (57, 'user_1737193627857');
INSERT INTO public.users VALUES (58, 'user_1737193627856');
INSERT INTO public.users VALUES (59, 'user_1737193633055');
INSERT INTO public.users VALUES (60, 'user_1737193633054');
INSERT INTO public.users VALUES (61, 'user_1737193671855');
INSERT INTO public.users VALUES (62, 'user_1737193671854');
INSERT INTO public.users VALUES (63, 'user_1737193700673');
INSERT INTO public.users VALUES (64, 'user_1737193700672');
INSERT INTO public.users VALUES (65, 'user_1737193923829');
INSERT INTO public.users VALUES (66, 'user_1737193923828');
INSERT INTO public.users VALUES (67, 'user_1737193966937');
INSERT INTO public.users VALUES (68, 'user_1737193966936');
INSERT INTO public.users VALUES (69, 'user_1737194017061');
INSERT INTO public.users VALUES (70, 'user_1737194017060');
INSERT INTO public.users VALUES (71, 'user_1737194029598');
INSERT INTO public.users VALUES (72, 'user_1737194029597');
INSERT INTO public.users VALUES (73, 'user_1737194043482');
INSERT INTO public.users VALUES (74, 'user_1737194043481');
INSERT INTO public.users VALUES (75, 'user_1737194068633');
INSERT INTO public.users VALUES (76, 'user_1737194068632');
INSERT INTO public.users VALUES (77, 'user_1737194123668');
INSERT INTO public.users VALUES (78, 'user_1737194123667');
INSERT INTO public.users VALUES (79, 'user_1737194156493');
INSERT INTO public.users VALUES (80, 'user_1737194156492');
INSERT INTO public.users VALUES (81, 'user_1737194177696');
INSERT INTO public.users VALUES (82, 'user_1737194177695');
INSERT INTO public.users VALUES (83, 'user_1737194285346');
INSERT INTO public.users VALUES (84, 'user_1737194285345');
INSERT INTO public.users VALUES (85, 'user_1737194316467');
INSERT INTO public.users VALUES (86, 'user_1737194316466');
INSERT INTO public.users VALUES (87, 'user_1737194553434');
INSERT INTO public.users VALUES (88, 'user_1737194553433');
INSERT INTO public.users VALUES (89, 'user_1737194584966');
INSERT INTO public.users VALUES (90, 'user_1737194584965');
INSERT INTO public.users VALUES (91, 'user_1737194666992');
INSERT INTO public.users VALUES (92, 'user_1737194666991');
INSERT INTO public.users VALUES (93, 'user_1737195824036');
INSERT INTO public.users VALUES (94, 'user_1737195824035');
INSERT INTO public.users VALUES (95, 'user_1737196303472');
INSERT INTO public.users VALUES (96, 'user_1737196303471');
INSERT INTO public.users VALUES (97, 'user_1737196312133');
INSERT INTO public.users VALUES (98, 'user_1737196312132');
INSERT INTO public.users VALUES (99, 'user_1737196393561');
INSERT INTO public.users VALUES (100, 'user_1737196393560');
INSERT INTO public.users VALUES (101, 'user_1737196403200');
INSERT INTO public.users VALUES (102, 'user_1737196403199');
INSERT INTO public.users VALUES (103, 'user_1737196412298');
INSERT INTO public.users VALUES (104, 'user_1737196412297');
INSERT INTO public.users VALUES (105, 'user_1737196856952');
INSERT INTO public.users VALUES (106, 'user_1737196856951');
INSERT INTO public.users VALUES (107, 'user_1737197030797');
INSERT INTO public.users VALUES (108, 'user_1737197030796');
INSERT INTO public.users VALUES (109, 'user_1737197178296');
INSERT INTO public.users VALUES (110, 'user_1737197178295');
INSERT INTO public.users VALUES (111, 'user_1737197213255');
INSERT INTO public.users VALUES (112, 'user_1737197213254');
INSERT INTO public.users VALUES (113, 'user_1737197264147');
INSERT INTO public.users VALUES (114, 'user_1737197264146');
INSERT INTO public.users VALUES (115, 'user_1737197316968');
INSERT INTO public.users VALUES (116, 'user_1737197316967');
INSERT INTO public.users VALUES (117, 'user_1737197364996');
INSERT INTO public.users VALUES (118, 'user_1737197364995');
INSERT INTO public.users VALUES (119, 'user_1737197379166');
INSERT INTO public.users VALUES (120, 'user_1737197379165');
INSERT INTO public.users VALUES (121, 'user_1737197482136');
INSERT INTO public.users VALUES (122, 'user_1737197482135');
INSERT INTO public.users VALUES (123, 'user_1737197605293');
INSERT INTO public.users VALUES (124, 'user_1737197605292');
INSERT INTO public.users VALUES (125, 'user_1737197613948');
INSERT INTO public.users VALUES (126, 'user_1737197613947');
INSERT INTO public.users VALUES (127, 'user_1737197625631');
INSERT INTO public.users VALUES (128, 'user_1737197625630');
INSERT INTO public.users VALUES (129, 'user_1737197637756');
INSERT INTO public.users VALUES (130, 'user_1737197637755');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 444, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 130, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

