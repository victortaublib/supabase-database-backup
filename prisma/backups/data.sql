SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict iPld9l3KcWpyvXlJdgbaPdd1f48QQspqsvJHAyq2nov9GESFamxwplk7mtEGbZu

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "name", "email", "passwordHash", "role", "avatarUrl", "active", "createdAt", "updatedAt") FROM stdin;
908477be-b210-48f9-9c42-45690c4d220c	Administrador	demandasdacomunicacao@gmail.com	$2b$12$jl./clDGS11eQi.pRM0MjOrcl3q5.ROex5XiqpeCugdoHiOD9Wouq	ADMIN	\N	t	2026-08-07 17:11:51.745	2026-08-07 17:12:22.44
3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	Victor - Telefone 4	contato.victorgomess@gmail.com	$2b$12$5rEKp4QE7oqHGbUjfcQue.4Muni.O4gSIZQ1Cbjhr6fj8ADA7zNp.	OPERATOR	\N	t	2026-08-07 19:12:18.066	2026-08-07 20:08:38.79
0fdc3b09-573b-492e-ac19-0bccf7675328	Millena - Telefone 6	millenagomesneves7@gmail.com	$2b$12$jE5YVK36q3AFT8VTpmeHYOYvzhtuwwbMrWz6Hqw7KFOfT6i2m3B6W	OPERATOR	\N	t	2026-08-10 11:39:20.31	2026-08-10 11:39:20.31
51186511-dd29-4c57-9e06-dd2ee8cb6c2f	Rebeca - Telefone 1	bekc25@icloud.com	$2b$12$bgTVjxYFdfN6r9Ps4Rg8ieaJSpqaR9lzLpXIXhB5.91n3I6f40fe2	OPERATOR	\N	t	2026-08-10 13:39:17.939	2026-08-10 13:39:17.939
ef88882c-b914-42e4-9da1-29ba33bdafa4	Ingrid - Telefone 5	ingridntelles@hotmail.com	$2b$12$H4dn8VG2dG0zKZwXa46nx.3PGR5cqQW7SnZT1/l2C4uq2JS5Q6fvO	OPERATOR	\N	t	2026-08-10 13:40:54.811	2026-08-10 13:40:54.811
eaa6d959-a24c-4881-a882-061c4cd19902	Julio - Telefone 7	juliolemosalencar@gmail.com	$2b$12$oztHSOBoBm8IWDX8b0AMdOf8lNZiClChI6iZDwrm9y3UNEsMxDeXC	OPERATOR	\N	t	2026-08-10 16:44:13.957	2026-08-10 16:44:13.957
478b69cf-d291-45df-b3a9-439f6d3478cb	Igor	igorsmgoulart@gmail.com	$2b$12$0umpbFu0/rSrFBuz9d89kOioJfHOx3BAFaHHbbmBgM223YSzQOhm6	ADMIN	\N	t	2026-08-10 17:32:58.877	2026-08-10 17:32:58.877
17852695-98dd-457e-8459-c409d223d417	Vinicius - Telefone 3	vinicius.barpen@gmail.com	$2b$12$hqYUw4Z1Q/2Psuwmxfvy3uADJ3DfZfvw/sBEgCgTi56A2/A7B/aDS	OPERATOR	\N	t	2026-08-10 12:42:50.476	2026-08-11 14:12:34.048
\.


--
-- Data for Name: audit_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."audit_logs" ("id", "action", "entity", "entityId", "summary", "changes", "userId", "createdAt") FROM stdin;
6ff7becd-4856-426a-b491-31b07e78683d	CREATED	DAILY_REPORT	6727482d-c416-4725-80de-a7c45ffb84be	Relatório criado (VK Botafogo, 2026-08-07)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-07 19:14:56.56
1ac46369-ff82-4255-b3d0-703bc9f79686	CREATED	MATERIAL_REQUEST	edeb826f-1936-4559-b212-fc38b3b0f17d	Pedido de material criado (Rebeca)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-07 19:17:19.162
50fa6b2f-2e06-4ceb-9037-136cc72bbc71	CREATED	VOLUNTEER_REQUEST	43c3b811-0f01-46be-980f-bf9db76e44ce	Pedido de trabalho criado (Victor)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-07 19:18:16.388
54957414-6872-4aa0-8e79-2b3625bf2510	CREATED	DAILY_REPORT	4f4e72fa-7be7-403f-8815-f1c2171f89ea	Relatório criado (Horto, 2026-08-07)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-07 20:01:29.363
0782e275-67ee-4822-adc1-50cb5678c2d5	CREATED	MATERIAL_REQUEST	d2b955cc-1a42-4982-adf9-f5a23036e0f7	Pedido de material criado (Rebeca)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-07 20:02:01.685
c83e3bde-8855-4a4f-b814-65600e4981db	CREATED	VOLUNTEER_REQUEST	034e4c12-ef07-4e0c-ad04-fa29decde137	Pedido de trabalho criado (Neide Oliveira)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-07 20:30:29.926
ab90bba5-9ad5-46e9-a9b2-e166f67922a1	CREATED	DAILY_REPORT	b4616526-9392-4246-af3d-8c1238aaec8c	Relatório criado (Nova Iguaçu, 2026-08-07)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-07 20:45:58.064
6d51a711-8fa7-4431-937f-202ede3a6c61	CREATED	DAILY_REPORT	d5e96572-1a58-4e35-b0e4-9841647b97dc	Relatório criado (Bento Ribeiro, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 11:47:06.282
929137ac-50fa-41a4-ba9a-6561aac396bf	UPDATED	DAILY_REPORT	d5e96572-1a58-4e35-b0e4-9841647b97dc	Relatório atualizado (Bento Ribeiro, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 11:47:19.615
4c99b741-510e-4028-8f87-e8c3e9d95a10	CREATED	MATERIAL_REQUEST	a992878a-dfa6-4381-befb-3e5b198d2928	Pedido de material criado (Magno)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 11:49:31.83
477e208a-8f69-46cb-b749-721f377adf6f	DELETED	DAILY_REPORT	d5e96572-1a58-4e35-b0e4-9841647b97dc	Relatório excluído (Bento Ribeiro, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 11:50:37.991
4f661cff-6b89-4769-89fb-37114956469d	DELETED	MATERIAL_REQUEST	a992878a-dfa6-4381-befb-3e5b198d2928	Pedido de material excluído (Magno)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 11:50:48.816
68660736-e540-4ae0-978c-ca82c57db500	CREATED	VOLUNTEER_REQUEST	0bf74a9d-dd90-40b8-a89b-2527b5cbc98d	Pedido de trabalho criado (Maria Rosa)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 11:54:15.568
f567066c-c9ee-418c-a0cf-665260eeb475	CREATED	VOLUNTEER_REQUEST	d1d65999-4488-4c94-8bea-9224f3f8f58a	Pedido de trabalho criado (Rosenilda Amaral)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:01:51.814
87c12ae1-ccdc-44bc-9f14-d30264684bf9	CREATED	VOLUNTEER_REQUEST	d57943e4-90fc-4d96-9832-2f4bcb9b1445	Pedido de trabalho criado (Juliana)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:05:16.272
948d92c2-3956-4348-83ac-e81295b1577a	CREATED	VOLUNTEER_REQUEST	439fec44-61f1-4bae-b15b-34f33976b899	Pedido de trabalho criado (Thais Maria)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:06:22.593
f415704c-9aab-4143-9c98-585431f2329b	CREATED	VOLUNTEER_REQUEST	aed88397-2879-41f5-9e5f-200f25e25d1f	Pedido de trabalho criado (Vitória Giovana)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:08:26.249
66895dc8-c175-47a2-b475-f073f2831d5c	CREATED	DAILY_REPORT	bb8eaf62-2f90-4a14-b813-3c5f57d0088d	Relatório criado (Avulso, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:11:30.502
68a9e52e-da61-49c3-b7fa-0d035d9abf4e	UPDATED	DAILY_REPORT	bb8eaf62-2f90-4a14-b813-3c5f57d0088d	Relatório atualizado (Avulso, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:21:46.493
d59ad16c-2eff-43fa-ba9a-24d82969c19c	CREATED	DAILY_REPORT	4dbf61cf-3865-4125-bb09-7e0178a00c1e	Relatório criado (Horto, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 12:34:10.657
b01d88a7-538f-4f6f-9686-25fddf6af459	UPDATED	DAILY_REPORT	4dbf61cf-3865-4125-bb09-7e0178a00c1e	Relatório atualizado (Horto, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 12:34:22
670c8c69-1264-4cc2-a128-0c0f7cca436c	DELETED	DAILY_REPORT	4dbf61cf-3865-4125-bb09-7e0178a00c1e	Relatório excluído (Horto, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 13:05:08.577
c95da84d-e489-4aca-a8e5-03319962c95d	CREATED	DAILY_REPORT	6e40606b-ec5a-48c5-8b4a-74d6c9b96a14	Relatório criado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 13:16:41.86
5885b9c6-2ad6-436f-be77-2683af0bb6bf	CREATED	VOLUNTEER_REQUEST	af1b9f36-d49a-468b-8bdb-cf2ce010b362	Pedido de trabalho criado (Carlos Augusto)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 13:46:49.779
03044cc1-cca7-46c5-933d-0950fbbfef50	CREATED	DAILY_REPORT	ad4f1a80-420b-4f9e-8350-ce32e5576c45	Relatório criado (Camelôs, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 13:51:09.596
1f7d4ad3-7298-4c7f-9e2f-2780d324b258	DELETED	DAILY_REPORT	ad4f1a80-420b-4f9e-8350-ce32e5576c45	Relatório excluído (Camelôs, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 14:04:16.637
832116c5-c51b-40f8-a9a4-b109f1b3c114	UPDATED	DAILY_REPORT	6e40606b-ec5a-48c5-8b4a-74d6c9b96a14	Relatório atualizado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 14:18:39.604
1693169a-8c85-4f23-9975-53a618aba147	UPDATED	DAILY_REPORT	6e40606b-ec5a-48c5-8b4a-74d6c9b96a14	Relatório atualizado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 14:45:25.209
88741360-13d4-4887-b899-d834019ed5bf	CREATED	DAILY_REPORT	054b2ebd-ca8b-4143-bdf3-4fdf9478f6e8	Relatório criado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 15:22:04.318
0bc6f319-ad6f-430c-94c6-5a5f279e0bae	CREATED	DAILY_REPORT	97de928c-e327-4c80-90cf-512bbe3445a5	Relatório criado (Horto, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 15:41:40.054
e1272a28-e71e-4dd9-ad62-43addd03c66f	UPDATED	DAILY_REPORT	97de928c-e327-4c80-90cf-512bbe3445a5	Relatório atualizado (Horto, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 15:42:03.411
716e7ea3-c3f9-4af7-84d7-dd6ccd60e9e1	DELETED	DAILY_REPORT	97de928c-e327-4c80-90cf-512bbe3445a5	Relatório excluído (Horto, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 15:48:23.974
67b2e5f4-8c2b-4ea8-8542-c3e4d4a1531b	CREATED	DAILY_REPORT	755a3d25-0fe2-4f47-9701-1dbbfff12730	Relatório criado (Avulso, 2026-08-10)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 16:38:27.958
ab28c88b-df0f-4fde-8094-75db5fe761d8	UPDATED	DAILY_REPORT	6e40606b-ec5a-48c5-8b4a-74d6c9b96a14	Relatório atualizado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-11 02:56:15.159
bf6a09de-73c0-4765-8137-3cb0dd6c052a	UPDATED	DAILY_REPORT	6e40606b-ec5a-48c5-8b4a-74d6c9b96a14	Relatório atualizado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-10)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-11 11:34:37.342
2e3e76ba-296d-41fb-a656-d2ff76b458e6	CREATED	DAILY_REPORT	2b8ee76d-eab0-4dea-8795-b91a742ba2c4	Relatório criado (Horto, 2026-08-11)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-11 12:59:19.163
3e4fc884-a9c7-48f2-bc62-6325014fc7ae	CREATED	VOLUNTEER_REQUEST	56649afd-340c-4d62-a0eb-bffe4828cb61	Pedido de trabalho criado (Deuza Alves Ferraz)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 13:32:03.143
1043404d-eb70-4f0e-8d2a-00bf2aeacef1	CREATED	DAILY_REPORT	f98c670f-040f-4608-b334-fe26893141b6	Relatório criado (Avulso, 2026-08-10)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 14:15:03.688
4e8c8579-c088-4efa-b962-27d13001af15	CREATED	DAILY_REPORT	1e4158ec-8474-4236-b956-10880b4bc680	Relatório criado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-11)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 14:15:55.355
4eabbd98-946c-43c0-a0d7-eb1c5e1ede85	UPDATED	DAILY_REPORT	1e4158ec-8474-4236-b956-10880b4bc680	Relatório atualizado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-10)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 14:16:38.061
f15847e3-d265-4ac0-857e-c45a60904b06	CREATED	DEMAND	e2608c02-e213-4067-a11a-ea78166e5326	Demanda criada (Poda de árvore — Rodrigo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:42:44.744
1e8efc4b-69f5-497e-8f80-25549c3b96d5	CREATED	DEMAND	66bdb810-d900-42ce-bd4b-ec58a9c807c4	Demanda criada (Poda de árvore — Teste)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:48:57.369
f0110fc1-c32c-4b38-ba26-a76e5fe5ce11	CREATED	DEMAND	c5cd1e9a-dff7-4a57-9b9e-34efa1741be4	Demanda criada (Poda de árvore — Teste)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:49:45.962
f7302601-7f95-46af-a0fc-c27494694c56	DELETED	DEMAND	c5cd1e9a-dff7-4a57-9b9e-34efa1741be4	Demanda excluída (Teste)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:50:01.979
f43d7b53-13c6-4642-9612-6bca2abeeffb	DELETED	DEMAND	66bdb810-d900-42ce-bd4b-ec58a9c807c4	Demanda excluída (Teste)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:50:11.398
b1da8464-55c4-4b5b-83d1-ecb76220f136	UPDATED	DEMAND	e2608c02-e213-4067-a11a-ea78166e5326	Demanda atualizada (Poda de árvore — Rodrigo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 15:00:34.862
dad4a59f-0bad-45ee-8d56-27e8112790e8	CREATED	DAILY_REPORT	f68f489a-5767-4454-ab65-7f5ffdf9bcac	Relatório criado (Censo Botafogo, 2026-08-11)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-11 15:34:58.743
c10728bc-b1db-49c3-9a07-4abdd46c163d	CREATED	DAILY_REPORT	1ff39e9a-a322-498d-a37c-658c55e80ecf	Relatório criado (Agenda Sta Rita, 2026-08-10)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 17:35:16.919
322a55ae-cb43-46fe-9bf7-184322a38bd0	UPDATED	DAILY_REPORT	1ff39e9a-a322-498d-a37c-658c55e80ecf	Relatório atualizado (Agenda Sta Rita, 2026-08-08)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 17:36:01.362
66a688c2-ebf5-4f11-83de-b6e7f6764522	CREATED	DAILY_REPORT	d85b926f-0f1d-43ae-808a-3d8b81e6d9e2	Relatório criado (Cavalvanti, 2026-08-08)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 17:47:17.933
043ab0bb-fe5c-4dff-8e38-ef3ed939f605	UPDATED	DAILY_REPORT	d85b926f-0f1d-43ae-808a-3d8b81e6d9e2	Relatório atualizado (Cavalvanti, 2026-08-07)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 18:18:33.855
00285716-de81-4bdc-bcd7-ecfc9f82f1dd	CREATED	DAILY_REPORT	ba9d1e02-a4b3-4311-8fdf-cb80c19a265d	Relatório criado (Avulso, 2026-08-11)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 19:03:39.825
8013622e-ab06-4b15-b037-3a1d76bb8fd2	UPDATED	DAILY_REPORT	ba9d1e02-a4b3-4311-8fdf-cb80c19a265d	Relatório atualizado (Avulso, 2026-08-11)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 19:04:58.528
0fcfac60-d2ba-41b5-978d-b89a337f3b06	CREATED	DAILY_REPORT	64eabc3c-3409-4374-ad60-ba01d94027bc	Relatório criado (Lapa, 2026-08-11)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:21:37.215
a30cdd49-d2b1-4d6e-8dc7-406e7010a196	CREATED	DAILY_REPORT	5b53c710-602b-45e4-a775-adf3676b1d15	Relatório criado (Avulso, 2026-08-11)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:23:03.763
b57e0813-62f0-4972-ad69-2bc7104e7c52	UPDATED	DAILY_REPORT	64eabc3c-3409-4374-ad60-ba01d94027bc	Relatório atualizado (Lapa, 2026-08-11)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:23:14.379
9a90690f-1002-4a05-8810-0eb3536eaf12	CREATED	DAILY_REPORT	89616586-cd24-45a5-aa21-0f6830ae0ff3	Relatório criado (Penha, 2026-08-11)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:24:19.133
0b3c1491-7a39-4c2f-a93c-751a0c14a46f	CREATED	DAILY_REPORT	3e76ef30-3057-4778-a044-353b5da81243	Relatório criado (Valqueire, 2026-08-11)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:24:52.863
9ca8398a-1c1e-44f4-b86d-fa1ed684a177	UPDATED	DAILY_REPORT	f68f489a-5767-4454-ab65-7f5ffdf9bcac	Relatório atualizado (Censo Botafogo, 2026-08-11)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-11 23:00:02.689
545815ff-dd4b-4bbd-ae08-cf103438933a	CREATED	MATERIAL_REQUEST	8e88b89f-9520-4e64-aaf6-816cac24578a	Pedido de material criado (Robson Miotti)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 12:53:38.257
be53a6c9-a441-4d83-aa13-b6ad3a998bfb	CREATED	DAILY_REPORT	14241a15-2451-48e6-9dfb-4fba85c81d3e	Relatório criado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-11)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 13:24:47.568
6f97f122-3c9b-4aea-857e-5fdf39bfd6bd	UPDATED	DAILY_REPORT	14241a15-2451-48e6-9dfb-4fba85c81d3e	Relatório atualizado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-11)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 13:26:27.906
13432dff-8c68-46e1-ae0f-f52093eb7d76	CREATED	DAILY_REPORT	dd726fce-8272-45f0-9e04-54941630cfc4	Relatório criado (Praça XV, 2026-08-11)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 13:27:41.963
ec2cddbe-2393-41d4-bcb6-43b3f8bab191	CREATED	DAILY_REPORT	5fc0f05f-2da3-4534-a7cd-ea0d5d5f1aa0	Relatório criado (Avulso, 2026-08-11)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 13:37:43.556
880d7fff-28f1-44bb-bc04-ba8e860a284d	CREATED	DAILY_REPORT	afafdb43-49c1-4af1-8723-e12eba816795	Relatório criado (Praça XV, 2026-08-12)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 15:45:03.89
3f311712-fde4-40d9-b02f-f28717bf0f6a	CREATED	DAILY_REPORT	40a580e2-6439-4319-8254-fe147355c713	Relatório criado (Museu do Amanha, 2026-08-12)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 15:46:55.613
f268df6a-e558-484c-b80f-a66c6248dda9	CREATED	WHATSAPP_GROUP	8d25c1f5-f7a7-4a8d-8037-0152f340f37d	Grupo de WhatsApp criado (Leonel de Esquerda com Piedade)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 16:24:35.083
6e3ead03-3bdd-42dd-a9b8-0ff5ed53af80	CREATED	WHATSAPP_GROUP	553c610f-11f5-446e-aea3-0312fd33f07f	Grupo de WhatsApp criado (TIME LEONEL DE ESQUERDA 🫱🏽‍🫲🏾🌟)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:51:05.856
c798139c-9a51-4017-8a68-d9968c516fdd	CREATED	WHATSAPP_GROUP	d2331e56-d998-41a5-9cd9-2d811464f99e	Grupo de WhatsApp criado (Leonel de Esquerda com Caxias)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:51:40.323
24303231-2761-4548-85a3-1d953132e795	CREATED	WHATSAPP_GROUP	43a26819-1dbd-4aef-94f4-16cb668861ab	Grupo de WhatsApp criado (Cachambi fechado com Leonel)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:52:11.218
a1d14f21-3448-4206-a0f0-eec51e2dea43	CREATED	WHATSAPP_GROUP	941c110a-4ecf-47de-958f-cf2f0a7ece78	Grupo de WhatsApp criado (Leonel de Esquerda e Reimont)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:52:44.505
48630767-3997-470f-9968-a4b1c15877f9	CREATED	WHATSAPP_GROUP	7b5e264a-45db-43fc-84cd-69ef95a39571	Grupo de WhatsApp criado (VEREADOR LEONEL DE ESQUERDA JUNTO COM CAMELÔS ✊🏾)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:56:10.158
7972ac66-a0d7-401f-85bb-5f80e7ba1c11	CREATED	WHATSAPP_GROUP	236dc4d2-7162-40cb-bcfa-5fff1c7e9867	Grupo de WhatsApp criado (Leonel de Esquerda + Ilha do Governador)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 17:57:09.027
2ea31bee-0baf-4bf6-9cd9-207653b6e80b	CREATED	WHATSAPP_GROUP	e057b5b8-6004-4316-bf1e-4d66e65d94ec	Grupo de WhatsApp criado (FAMILIAS COLEGIO FRANÇA E SOUZA)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:57:46.09
e403e0c5-e580-4de0-b711-84f5402afe45	CREATED	WHATSAPP_GROUP	4dde7495-ed92-47c6-9225-8c9b8f3d7d45	Grupo de WhatsApp criado (Unidos pela Radiossonda ✊🏾)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 17:57:49.899
a38a65fc-ef31-47af-a74a-8efe6a4e2290	CREATED	WHATSAPP_GROUP	99bf4468-137f-458b-aaae-fcedc8b2b640	Grupo de WhatsApp criado (RUA EMBIRI - INFORMES)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:58:16.317
c5ea47a2-f0d5-4f30-9912-a08f282b4612	CREATED	WHATSAPP_GROUP	e71fd59a-add2-4b21-971e-d357ae6c9d1f	Grupo de WhatsApp criado (RUA GARFIELD DE ALMEIDA/NABUCO DE ARAUJO - INFORMES)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:59:14.297
ac620332-3750-48b5-81c3-170eec903bb9	CREATED	WHATSAPP_GROUP	ffe43800-26b8-477c-93df-e2efdb101150	Grupo de WhatsApp criado (TRAVESSA GODINHO DA COSTA/MANGUEIRA - PIEDADE - INFORMES)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 18:00:45.332
4656c60d-07b3-4e80-b6bd-5df751ccc1a5	CREATED	WHATSAPP_GROUP	f3f70309-8dd7-428c-8102-99fea3fe2ac0	Grupo de WhatsApp criado (Ver. Leonel / Velha Guarda)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 18:03:34.162
0121d578-cfb5-478f-bdfd-babced0a71aa	CREATED	WHATSAPP_GROUP	3d754dad-3dc5-4583-929d-8e58c45daff4	Grupo de WhatsApp criado (Leonel de Esquerda com Somos Todas Professoras)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 18:05:59.179
ba5dbba5-7d4e-4315-ac4e-1b2ea2bae0f0	CREATED	DAILY_REPORT	43fd85c5-fd8f-4bcf-a764-754f3e51bdb2	Relatório criado (Avulso, 2026-08-12)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 19:04:06.526
509283bd-423e-4a2b-ba28-a2a408091c53	CREATED	DAILY_REPORT	5fa26785-6082-4d1f-8488-e24b071ecf03	Relatório criado (Camelô * Ambulante * Trabalhadores da Orla, 2026-08-12)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 12:46:13.252
afa81836-cd07-4ef7-ac90-c4591517b06b	CREATED	DAILY_REPORT	040faf28-9dcf-4078-9514-8fca2d00f234	Relatório criado (Avulso, 2026-08-12)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 12:52:16.804
c2b5e272-6cf3-4e9e-be6f-603daa9e3cc7	CREATED	DAILY_REPORT	0e61b497-41df-4e2d-b859-56688d78cc27	Relatório criado (Audiencia Publica - Trabalho Informal, 2026-08-12)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 12:55:39.852
34c2a808-7ac3-4c22-90be-16aeb2e153e5	UPDATED	DAILY_REPORT	40a580e2-6439-4319-8254-fe147355c713	Relatório atualizado (Museu do Amanha, 2026-08-12)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 13:03:10.815
38b03c5b-0142-4d8b-83c6-ccb6cdfa2609	CREATED	DAILY_REPORT	a2e84220-3939-42de-89cb-d2a1dd582807	Relatório criado (AMIGOS BBZAO, 2026-08-13)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 13:06:51.626
e0ec062e-c0b9-4bf7-8a43-87263b0a69f5	CREATED	DAILY_REPORT	959081fa-218c-479f-9028-e860008b538e	Relatório criado (Bangu, 2026-08-13)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 13:08:13.07
5dd732fe-cedc-4aa8-8f0b-4a5b8005595e	CREATED	DAILY_REPORT	1a762ead-d279-4c2d-9289-9fe202b02646	Relatório criado (Banquinha Carioca, 2026-08-12)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 13:10:03.974
23088a35-fb0d-4086-9a45-89e79498bcc5	CREATED	DAILY_REPORT	f35f5ebc-b7a4-4e92-855d-fe5e67138252	Relatório criado (Avulso, 2026-08-12)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-13 14:00:23.853
b3fd41e2-b322-4a41-90e0-b89f7fe4e69b	CREATED	DAILY_REPORT	44beccb8-ee91-4c39-89eb-523f8af0c9bb	Relatório criado (Ilha, 2026-08-13)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-13 14:09:47.453
ac0e6cec-a050-43b3-bb82-6fcb368e38f6	UPDATED	DAILY_REPORT	f35f5ebc-b7a4-4e92-855d-fe5e67138252	Relatório atualizado (Avulso, 2026-08-12)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-13 14:10:31.385
77b1f7e5-e995-4c64-84c6-bc4dc7078d08	UPDATED	DAILY_REPORT	44beccb8-ee91-4c39-89eb-523f8af0c9bb	Relatório atualizado (Ilha, 2026-08-12)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-13 14:53:34.445
8e356ed9-fa77-4a14-a5b8-7ec1188dc120	CREATED	DAILY_REPORT	1d85fb81-1dd6-4d31-bc5c-65ab03ecd653	Relatório criado (Censo Botafogo, 2026-08-13)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-13 16:56:10.043
2e780d2f-8ea4-48c8-a986-5906b2d066ca	CREATED	VOLUNTEER_REQUEST	8db3d0e1-8019-4e75-8f21-b98d63185f62	Pedido de trabalho criado (Monica Albuquerque)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-13 17:07:50.837
2e0ded30-08eb-417c-80bd-e0944e14dc72	CREATED	DAILY_REPORT	aa38da46-6b81-4ccc-a031-867473253af1	Relatório criado (Roda Cultural, 2026-08-13)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 18:26:42.406
fce0f572-548d-4045-a9b7-7414cf29a08f	CREATED	DAILY_REPORT	d870e937-e6f2-43a0-a5e7-6a5d426b31db	Relatório criado (Panfletagem Carioca e Uruguaiana 2024, 2026-08-13)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 18:28:19.008
5b040e21-c64e-4c1f-b0be-7c7b4e97635d	CREATED	VOLUNTEER_REQUEST	0281b936-0c46-4b2b-ad60-0b670deaa8d2	Pedido de trabalho criado (Andressa Freitas)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-13 18:50:12.349
d50c9a9f-5145-4069-8d82-14e373fcc26b	CREATED	DAILY_REPORT	e496267a-8dbd-4d8a-a692-742abc2260be	Relatório criado (Avulso, 2026-08-13)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-13 18:56:56.838
c4d0a015-c033-4bfe-88db-3c10935c2874	CREATED	DAILY_REPORT	69fba48a-e796-4a01-abe8-c015c281a745	Relatório criado (gari temp, 2026-08-13)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-13 19:04:27.486
e8f53107-758f-4b7a-a8dd-b4e44a7eaa4f	CREATED	DAILY_REPORT	e5b3528a-509a-4ca7-b15f-f93875bc6d07	Relatório criado (Sanga VK, 2026-08-13)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-13 19:37:26.304
48f49a7d-89b5-44e1-a106-559d61fd72f8	UPDATED	DAILY_REPORT	1ff39e9a-a322-498d-a37c-658c55e80ecf	Relatório atualizado (Agenda Sta Rita, 2026-08-08)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-13 19:37:55.036
76cff52a-bf01-4f47-a122-be2a4866d63b	CREATED	DAILY_REPORT	77e55b47-bcec-49be-9a3b-e9beea8f616e	Relatório criado (Agenda Correios, 2026-08-13)	\N	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-13 20:13:26.623
3353e039-fcbe-4b3d-91f3-d0aad6bc3109	UPDATED	DAILY_REPORT	e496267a-8dbd-4d8a-a692-742abc2260be	Relatório atualizado (Avulso, 2026-08-13)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 12:03:59.613
e1e48bb6-efaa-4d96-93d9-6abd1b1b5728	CREATED	VOLUNTEER_REQUEST	766436b5-3e70-4b9f-b9a6-3e987cfb76a0	Pedido de trabalho criado (Arlei Coelho)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 13:01:44.986
d92d7c80-0af7-4e5e-a56f-f37a536a7cb5	CREATED	MATERIAL_REQUEST	51793f21-a52d-4613-9650-8018141a8a37	Pedido de material criado (Marcos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 13:31:40.923
c39b2c03-b041-463c-ad5e-df197544d151	CREATED	DEMAND	c64f5cf5-2bfd-400d-8c18-70998cd6c17e	Demanda criada (Cadastro de Currículo — Lucas Lugon)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 17:49:58.425
14cea25b-d38a-4c81-9bb9-b35b68bcd409	CREATED	VOLUNTEER_REQUEST	219d5793-b693-4da4-99ab-c602772e2644	Pedido de trabalho criado (Lucas Mugon)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 17:58:44.962
bfb102fc-56d4-4387-afb0-607b0c4acc12	CREATED	MATERIAL_REQUEST	112efa8c-5f24-4b70-ab89-60c39a7bb9d7	Pedido de material criado (Araujo Joao Costa)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 18:33:59.016
20c37e53-5ce3-444f-9946-4e7368951b95	CREATED	MATERIAL_REQUEST	24757c49-49e8-4dbb-9357-f6d1dfcede01	Pedido de material criado (Cybelle)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 18:43:40.031
4087ef03-b30d-4175-bb6b-ba9f7612b475	UPDATED	MATERIAL_REQUEST	24757c49-49e8-4dbb-9357-f6d1dfcede01	Pedido de material atualizado (Cybelle Ribeiro (Vozinha))	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 18:44:09.754
97421617-d891-4ada-8646-61a2f7265f7a	UPDATED	MATERIAL_REQUEST	24757c49-49e8-4dbb-9357-f6d1dfcede01	Pedido de material atualizado (Cybelle Ribeiro (Vozinha))	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 18:44:11.719
16c82e74-aab1-4a28-a15a-97cbd1de8f0d	CREATED	MATERIAL_REQUEST	e279f1a6-fb19-4656-9840-3644640896fd	Pedido de material criado (Jehro Gueiros)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 12:22:31.753
6eb17dfa-f660-466f-8c9a-02ac12b150b9	UPDATED	MATERIAL_REQUEST	8e88b89f-9520-4e64-aaf6-816cac24578a	Pedido de material atualizado (Robson Miotti)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 12:26:18.317
20bf02e1-c1d2-4f65-9c2b-0905bfba6e01	CREATED	MATERIAL_REQUEST	b566d48d-f299-48fb-8504-8bacc77c9f6a	Pedido de material criado (João Oliveira)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 12:30:05.783
7d6dade5-cef5-4f5b-a2ba-8baf86f46992	UPDATED	MATERIAL_REQUEST	b566d48d-f299-48fb-8504-8bacc77c9f6a	Pedido de material atualizado (João Oliveira)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 12:30:33.142
8c6bb431-214f-487f-83fa-a1e27a49ceea	CREATED	VOLUNTEER_REQUEST	2c898224-85c0-4b86-a06e-bd07da2f9326	Pedido de trabalho criado (Márcio Domingos - Ilha)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 13:47:36.658
0a6339fd-bc05-404e-b032-69acd7aceb35	CREATED	MATERIAL_REQUEST	15c49346-3015-4190-af55-7bcdc095d897	Pedido de material criado (Márcio Domingos - Ilha)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 13:55:17.109
e61fe569-2ec5-4498-989a-7967344e947d	UPDATED	VOLUNTEER_REQUEST	2c898224-85c0-4b86-a06e-bd07da2f9326	Pedido de trabalho atualizado (Márcio Domingos - Ilha)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 13:56:17.567
d5deb7b7-b5e2-47f5-b582-28c3aa9fb809	CREATED	VOLUNTEER_REQUEST	67ef3c94-e279-463f-a212-dd0b1ff24c0b	Pedido de trabalho criado (José Nascimento)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 14:43:10.539
0d21e318-33f0-411e-af01-cb8edfb8504c	UPDATED	VOLUNTEER_REQUEST	2c898224-85c0-4b86-a06e-bd07da2f9326	Pedido de trabalho atualizado (Márcio Domingos - Ilha)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 14:43:24.598
4f93d6ba-525a-4364-863a-ccbd116c87f2	CREATED	VOLUNTEER_REQUEST	1b25f9a1-77db-45b6-bf4f-59a787ef1103	Pedido de trabalho criado (Jehro Gueiros)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 14:43:59.726
2a817d5e-4e06-40f7-81ee-420f03ee4a05	CREATED	MATERIAL_REQUEST	7af536d6-0782-4e05-8ac1-e809f08e5917	Pedido de material criado (José Nascimento)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 14:45:56.964
03bd7103-5c64-4612-afca-2c8470e38fe7	CREATED	MATERIAL_REQUEST	52a9bd62-ad90-4812-a926-2d16d2942eb1	Pedido de material criado (Ricardo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 15:06:04.716
059184aa-20ab-41da-b561-2dca7ce95b4e	CREATED	MATERIAL_REQUEST	50726352-7c6b-405e-9ea0-389701a0dc03	Pedido de material criado (Rua Paulinho da ilha)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 15:09:01.796
8e0eafd4-6624-4ee6-bf50-ec7ff7561801	UPDATED	MATERIAL_REQUEST	50726352-7c6b-405e-9ea0-389701a0dc03	Pedido de material atualizado (Araujo Joao Costa)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 15:09:21.464
efa69bb0-01ba-4498-9f05-38e76630dc31	UPDATED	MATERIAL_REQUEST	50726352-7c6b-405e-9ea0-389701a0dc03	Pedido de material atualizado (Araujo Joao Costa)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 15:10:25.485
97d094e2-be61-4e15-8b9b-9a067bf819a2	CREATED	MATERIAL_REQUEST	72594066-2e05-48a0-a30e-af650b0b05da	Pedido de material criado (Marcelo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 15:20:47.489
947ec833-5216-4caf-bd75-82b10b9d6d04	CREATED	MATERIAL_REQUEST	d4276ee6-fe68-4922-b14f-fd3a6454f80e	Pedido de material criado (Abisai Leite)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 15:26:26.393
6db9d91c-e4ca-492a-b78a-ed6b6b4779a2	CREATED	VOLUNTEER_REQUEST	9f23b54f-f383-4aa7-ae1c-6c6d3984ba1f	Pedido de trabalho criado (Abisai Leite)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-17 15:27:29.757
577f38f1-f7bb-43cf-8e1f-c3707c9ba7d4	CREATED	MATERIAL_REQUEST	aa697339-c791-4d7b-8c13-afaaf16d18d2	Pedido de material criado (Rosimary Tostes)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 15:29:08.492
96fb2a73-8870-4cab-be60-9d25e06f7155	CREATED	MATERIAL_REQUEST	1439951e-fa48-44e2-b3d1-e53d5ced16e4	Pedido de material criado (Diniz da Silva)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 15:36:44.247
b372cf50-0d8e-4940-96d8-5906414b8bf0	DELETED	MATERIAL_REQUEST	112efa8c-5f24-4b70-ab89-60c39a7bb9d7	Pedido de material excluído (Araujo Joao Costa)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 16:16:20.323
2f3dac2c-cffa-4c5f-9cbd-4d7583456239	CREATED	MATERIAL_REQUEST	cc00cc33-f1e8-4d55-941a-db354ba71b6b	Pedido de material criado (Carlos Rocha)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 18:28:33.776
4e3acf2f-2bf0-42cf-a5be-d2a7aa12b636	CREATED	DAILY_REPORT	458d5b6e-1a43-4248-92e3-ad6568c3390b	Relatório criado (Avulsos, 2026-08-17)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 19:02:31.142
b59e180b-b414-4a15-b380-d4ebd3de4e6c	CREATED	MATERIAL_REQUEST	d5f5dd36-61b7-4a5c-b22e-c9a6afbcf42e	Pedido de material criado (Ricardo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 12:17:03.461
f12629da-36fa-4f7b-ab9b-b5063cd478be	CREATED	MATERIAL_REQUEST	1077f799-3718-44d9-a5d2-63de14a17496	Pedido de material criado (Janio Santos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 12:53:41.28
3bda9c46-5f3c-4b83-84a0-46a85e716bb2	CREATED	MATERIAL_REQUEST	6c679ce5-dad0-4009-831d-ae5eff049142	Pedido de material criado (Simões do Nascimento)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 13:11:54.213
dda69637-5505-484b-86c0-221faa4f4d69	CREATED	MATERIAL_REQUEST	fad6b81c-bd9b-4054-9c71-44fd1ec5cf5a	Pedido de material criado (Diego)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 13:13:04.356
e3b78a33-e06c-4fc8-9b56-0cbb8cf69078	CREATED	VOLUNTEER_REQUEST	29465473-11d6-4f0f-a4f2-18f33897b62b	Pedido de trabalho criado (Diego)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 13:36:07.88
4c2ecbbe-8522-42ce-8e5a-924af010ba30	CREATED	VOLUNTEER_REQUEST	c644e06d-946a-4f54-8532-8dce516492ec	Pedido de trabalho criado (Simões do Nascimento)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 13:40:20.094
97f96075-c3ed-4c15-9b56-88265044ae40	CREATED	MATERIAL_REQUEST	a08d9bf1-1564-4da3-8b3b-1ef5e7f0fb5a	Pedido de material criado (Beth Alves)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 13:46:57.642
4c807901-ea5c-4c46-9dd8-202dd9b0110a	CREATED	VOLUNTEER_REQUEST	56747ec1-5437-4465-80fc-9f6bc2804a96	Pedido de trabalho criado (Beth Alves)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 13:50:22.032
bfe7f542-f830-4e17-ae00-bd511c7e5609	CREATED	VOLUNTEER_REQUEST	803a6e18-2274-4f92-a37e-9c63ac57dfa7	Pedido de trabalho criado (Alessandra Figueira)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 14:53:56.493
4640cd26-6954-4c86-8272-80ea64a10201	CREATED	MATERIAL_REQUEST	249a3bba-12e4-42f8-98b5-08ce608554a9	Pedido de material criado (Alessandra Figueira)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 14:57:37.881
e6e174b1-208a-4083-9838-25fb9e0d0806	CREATED	VOLUNTEER_REQUEST	17c5bad4-92d8-4cdb-9a43-ff2881f6ea56	Pedido de trabalho criado (Janio Santos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 17:50:11.02
d2e6dcc6-3bd4-4239-bdb9-d52d47c96f8d	CREATED	VOLUNTEER_REQUEST	2cd50bc6-ff6f-43a7-a357-40c665d88928	Pedido de trabalho criado (Luiz Fernando)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 17:56:07.866
8f7f9b64-28cc-4d7a-8ebd-5ec97d575243	CREATED	MATERIAL_REQUEST	975c7681-e348-4e9d-928c-636539179703	Pedido de material criado (Luiz Fernando)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 18:05:22.916
0528c1aa-117a-494a-a11d-54614ca43a1a	CREATED	MATERIAL_REQUEST	1d37ff53-68fe-4a36-8e0d-f1a20381bf81	Pedido de material criado (Martha Santos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 18:07:56.457
be313816-a81e-426b-8c79-2be8a4af5454	CREATED	MATERIAL_REQUEST	1bf6053d-2d34-4448-a180-8a1371d431c4	Pedido de material criado (Scooby/Felipe)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 18:09:17.37
63bfa3b8-71f8-4168-91b2-a05b54a06a8c	UPDATED	MATERIAL_REQUEST	1d37ff53-68fe-4a36-8e0d-f1a20381bf81	Pedido de material atualizado (Martha Santos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 18:09:26.427
956c42b2-5fdf-444a-83b8-df13ea941490	CREATED	MATERIAL_REQUEST	103aefb0-9246-41b6-bf0a-f47fed4ec6c8	Pedido de material criado (Anderson Souza)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 18:33:09.396
62f63865-f184-4899-9de8-98908f91e5de	CREATED	MATERIAL_REQUEST	7167a15a-3460-4242-b24f-46fc45cedd6e	Pedido de material criado (Kissila Escalzo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 18:43:50.362
2f2830ac-9491-47c3-b649-6ad06b4ae5f1	CREATED	DAILY_REPORT	a1e92db8-8c65-4789-9e7f-267dbbe10c51	Relatório criado (Avulsos, 2026-08-18)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 19:05:01.011
c679407a-fe01-4dd8-942d-e7bb74c4e1ce	CREATED	MATERIAL_REQUEST	89fae1f2-b193-4195-9f42-a181763bc375	Pedido de material criado (Monica)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 19:32:33.212
7029c871-de07-4ae1-a4b9-3a9bdc67f561	CREATED	MATERIAL_REQUEST	2316115c-6fc2-40b7-b98c-3e29b1401113	Pedido de material criado (Carlos Elias)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 19:53:09.674
4235eb7b-4044-4b11-9a4f-720b86107298	CREATED	MATERIAL_REQUEST	d556fd15-bf68-40ae-93e2-61b3cb3bfec8	Pedido de material criado (Catia dos Reis)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 19:55:55.254
7df9613e-cce7-4cbd-8823-0727ac486f6f	CREATED	MATERIAL_REQUEST	a7f22999-8742-4062-a1b0-717e5d785417	Pedido de material criado (Marcelo Fernandes)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 20:13:19.348
00835e62-6d07-45f2-a405-d5517cec4992	CREATED	MATERIAL_REQUEST	24b8a1e1-6e52-4925-a5d5-63e390747252	Pedido de material criado (Tadeu)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-18 20:35:09.984
\.


--
-- Data for Name: daily_reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."daily_reports" ("id", "date", "tag", "contacts", "replies", "supporters", "materialRequestsCount", "volunteerRequestsCount", "observations", "userId", "createdAt", "updatedAt", "phone") FROM stdin;
3e76ef30-3057-4778-a044-353b5da81243	2026-08-11	Valqueire	5	2	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:24:52.848	2026-08-11 21:24:52.848	Telefone 5
5fc0f05f-2da3-4534-a7cd-ea0d5d5f1aa0	2026-08-11	Avulso	7	7	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 13:37:43.526	2026-08-12 13:37:43.526	Telefone 6
44beccb8-ee91-4c39-89eb-523f8af0c9bb	2026-08-12	Ilha	16	8	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-13 14:09:47.422	2026-08-13 14:53:34.413	Telefone 5
d85b926f-0f1d-43ae-808a-3d8b81e6d9e2	2026-08-07	Cavalvanti	30	13	0	0	0	Criação de grupo	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 17:47:17.904	2026-08-11 18:18:33.826	Telefone 1
6e40606b-ec5a-48c5-8b4a-74d6c9b96a14	2026-08-10	Camelô * Ambulante * Trabalhadores da Orla	147	20	0	0	0	Envio do convite da audiencia publica na camara	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 13:16:41.831	2026-08-11 11:34:37.315	Telefone 6
5b53c710-602b-45e4-a775-adf3676b1d15	2026-08-11	Avulso	2	2	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:23:03.742	2026-08-11 21:23:03.742	Telefone 5
959081fa-218c-479f-9028-e860008b538e	2026-08-13	Bangu	1	0	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 13:08:13.05	2026-08-13 13:08:13.05	Telefone 6
69fba48a-e796-4a01-abe8-c015c281a745	2026-08-13	gari temp	1	1	0	0	0	agenda morro dos macacos leo fumacinha	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-13 19:04:27.455	2026-08-13 19:04:27.455	Telefone 1
e5b3528a-509a-4ca7-b15f-f93875bc6d07	2026-08-13	Sanga VK	15	2	2	0	0	Apoiadores dos leonel na Vk. Mas reclamam da ausencia dele la.	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-13 19:37:26.278	2026-08-13 19:37:26.278	Telefone 1
1ff39e9a-a322-498d-a37c-658c55e80ecf	2026-08-08	Agenda Sta Rita	6	6	6	0	0	Contatos feito pelo Qr Code	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 17:35:16.883	2026-08-13 19:37:55.015	Telefone 1
77e55b47-bcec-49be-9a3b-e9beea8f616e	2026-08-13	Agenda Correios	1	1	1	0	0	notificar quando tiver reunião	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-13 20:13:26.584	2026-08-13 20:13:26.584	Telefone 1
e496267a-8dbd-4d8a-a692-742abc2260be	2026-08-13	Avulso	60	60	8	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-13 18:56:56.815	2026-08-14 12:03:59.448	Telefone 4
ba9d1e02-a4b3-4311-8fdf-cb80c19a265d	2026-08-11	Avulso	39	39	17	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 19:03:39.787	2026-08-11 19:04:58.506	Telefone 4
054b2ebd-ca8b-4143-bdf3-4fdf9478f6e8	2026-08-10	Camelô * Ambulante * Trabalhadores da Orla	10	3	1	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 15:22:04.284	2026-08-10 15:22:04.284	Telefone 4
43fd85c5-fd8f-4bcf-a764-754f3e51bdb2	2026-08-12	Avulso	31	31	10	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 19:04:06.497	2026-08-12 19:04:06.497	Telefone 4
755a3d25-0fe2-4f47-9701-1dbbfff12730	2026-08-10	Avulso	29	22	5	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 16:38:27.93	2026-08-10 16:38:27.93	Telefone 4
b4616526-9392-4246-af3d-8c1238aaec8c	2026-08-07	Nova Iguaçu	48	16	12	0	0	Convite para reunião de lideranças com Reimont	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-07 20:45:58.035	2026-08-07 20:45:58.035	Telefone 4
040faf28-9dcf-4078-9514-8fca2d00f234	2026-08-12	Avulso	4	4	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 12:52:16.774	2026-08-13 12:52:16.774	Telefone 6
0e61b497-41df-4e2d-b859-56688d78cc27	2026-08-12	Audiencia Publica - Trabalho Informal	1	1	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 12:55:39.833	2026-08-13 12:55:39.833	Telefone 6
14241a15-2451-48e6-9dfb-4fba85c81d3e	2026-08-11	Camelô * Ambulante * Trabalhadores da Orla	62	17	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 13:24:47.533	2026-08-12 13:26:27.889	Telefone 6
1a762ead-d279-4c2d-9289-9fe202b02646	2026-08-12	Banquinha Carioca	1	1	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 13:10:03.954	2026-08-13 13:10:03.954	Telefone 6
40a580e2-6439-4319-8254-fe147355c713	2026-08-12	Museu do Amanha	3	3	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 15:46:55.594	2026-08-13 13:03:10.788	Telefone 6
5fa26785-6082-4d1f-8488-e24b071ecf03	2026-08-12	Camelô * Ambulante * Trabalhadores da Orla	9	9	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 12:46:13.21	2026-08-13 12:46:13.21	Telefone 6
a2e84220-3939-42de-89cb-d2a1dd582807	2026-08-13	AMIGOS BBZAO	2	1	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 13:06:51.607	2026-08-13 13:06:51.607	Telefone 6
aa38da46-6b81-4ccc-a031-867473253af1	2026-08-13	Roda Cultural	17	3	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 18:26:42.379	2026-08-13 18:26:42.379	Telefone 6
afafdb43-49c1-4af1-8723-e12eba816795	2026-08-12	Praça XV	15	5	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 15:45:03.853	2026-08-12 15:45:03.853	Telefone 6
bb8eaf62-2f90-4a14-b813-3c5f57d0088d	2026-08-10	Avulso	8	4	2	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:11:30.48	2026-08-10 12:21:46.469	Telefone 6
d870e937-e6f2-43a0-a5e7-6a5d426b31db	2026-08-13	Panfletagem Carioca e Uruguaiana 2024	6	2	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-13 18:28:18.993	2026-08-13 18:28:18.993	Telefone 6
dd726fce-8272-45f0-9e04-54941630cfc4	2026-08-11	Praça XV	9	1	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 13:27:41.948	2026-08-12 13:27:41.948	Telefone 6
2b8ee76d-eab0-4dea-8795-b91a742ba2c4	2026-08-11	Horto	3	1	1	0	0	Julio Cesar de cesar de nova Iguaçu \nEle tem pessoas que foram dispensadas da concessionária de água  pode ser um apoiado em potencial	17852695-98dd-457e-8459-c409d223d417	2026-08-11 12:59:19.129	2026-08-11 12:59:19.129	Telefone 3
1d85fb81-1dd6-4d31-bc5c-65ab03ecd653	2026-08-13	Censo Botafogo	0	0	0	0	0	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-13 16:56:10.006	2026-08-13 16:56:10.006	Telefone 7
f68f489a-5767-4454-ab65-7f5ffdf9bcac	2026-08-11	Censo Botafogo	50	15	7	0	0	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-11 15:34:58.684	2026-08-11 23:00:02.646	Telefone 7
1e4158ec-8474-4236-b956-10880b4bc680	2026-08-10	Camelô * Ambulante * Trabalhadores da Orla	3	2	2	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 14:15:55.341	2026-08-11 14:16:38.046	Telefone 5
64eabc3c-3409-4374-ad60-ba01d94027bc	2026-08-11	Lapa	5	4	2	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:21:37.164	2026-08-11 21:23:14.36	Telefone 5
89616586-cd24-45a5-aa21-0f6830ae0ff3	2026-08-11	Penha	15	4	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:24:19.113	2026-08-11 21:24:19.113	Telefone 5
f35f5ebc-b7a4-4e92-855d-fe5e67138252	2026-08-12	Avulso	8	5	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-13 14:00:23.803	2026-08-13 14:10:31.367	Telefone 5
f98c670f-040f-4608-b334-fe26893141b6	2026-08-10	Avulso	5	5	3	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 14:15:03.666	2026-08-11 14:15:03.666	Telefone 5
458d5b6e-1a43-4248-92e3-ad6568c3390b	2026-08-17	Avulsos	31	31	16	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-17 19:02:31.103	2026-08-17 19:02:31.103	Telefone 4
a1e92db8-8c65-4789-9e7f-267dbbe10c51	2026-08-18	Avulsos	26	26	20	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-18 19:05:00.976	2026-08-18 19:05:00.976	Telefone 4
\.


--
-- Data for Name: demandas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."demandas" ("id", "fullName", "phone", "type", "tag", "neighborhood", "city", "fullAddress", "referencePoint", "description", "protocolNumber", "protocolDate", "responsibleAssessor", "status", "notes", "userId", "createdAt", "updatedAt") FROM stdin;
e2608c02-e213-4067-a11a-ea78166e5326	Rodrigo	21979376057	Poda de árvore	Guararapes/Cosme Velho	Cosme Velho	Rio de Janeiro	Rua João De Lerry 178	Quadra Cerra	Coqueiro precisa ser removido	RIO-33055082-2	2026-08-10	Gustavo	IN_FOLLOW_UP	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:42:44.513	2026-08-11 15:00:34.702
c64f5cf5-2bfd-400d-8c18-70998cd6c17e	Lucas Lugon	5521969630991	Cadastro de Currículo	Belford Roxo	Belford Roxo	Belford Roxo	Rua Teresinha Fernandes, 114	\N	Precisa cadastrar currículo	\N	\N	\N	REGISTERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 17:49:58.392	2026-08-14 17:49:58.392
\.


--
-- Data for Name: demand_timeline_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."demand_timeline_events" ("id", "demandId", "eventType", "fromStatus", "toStatus", "note", "userId", "createdAt") FROM stdin;
4cdd6569-d0f3-43a3-9669-489dbba3222d	c64f5cf5-2bfd-400d-8c18-70998cd6c17e	CREATED	\N	REGISTERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 17:49:58.444
\.


--
-- Data for Name: material_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."material_requests" ("id", "fullName", "phone", "tag", "neighborhood", "city", "fullAddress", "referencePoint", "materials", "materialOther", "quantity", "preferredDate", "preferredTime", "status", "notes", "userId", "assignedToId", "createdAt", "updatedAt") FROM stdin;
51793f21-a52d-4613-9650-8018141a8a37	Marcos	5521979574286	Oswaldo Cruz	Oswaldo Cruz	Oswaldo Cruz	Rua Alberto de Carvalho	\N	{Adesivo,Panfleto,Bandeira}	\N	1	\N	Manhã	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-14 13:31:40.889	2026-08-14 13:31:40.889
1077f799-3718-44d9-a5d2-63de14a17496	Janio Santos	5521986350829	Guaratiba	Guaratiba	Rio de Janeiro	Rua vila Gloria, S/N, LOTE- 11, QD-97, Jardim Maravilha	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	CEP.:23031-192	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 12:53:41.249	2026-08-18 12:53:41.249
24757c49-49e8-4dbb-9357-f6d1dfcede01	Cybelle Ribeiro (Vozinha)	5521996128623	São Salvador	Laranjeiras	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-14 18:43:40.015	2026-08-14 18:44:11.703
e279f1a6-fb19-4656-9840-3644640896fd	Jehro Gueiros	5521999005887	Freguesia JPA	Freguesia JPA	Rio de Janeiro	Rua Ana Cristina Cesar,155, bloco 02, AP. 409	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	CEP: 22763-145	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 12:22:31.717	2026-08-17 12:22:31.717
8e88b89f-9520-4e64-aaf6-816cac24578a	Robson Miotti	5521996406007	Caxias	Caxias	Caxias	---	\N	{Adesivo}	\N	1	\N	Manhã	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-12 12:53:38.22	2026-08-17 12:26:18.288
b566d48d-f299-48fb-8504-8bacc77c9f6a	João Oliveira	5521981957647	Irajá	Colégio	Rio de Janeiro	Estrada do colégio, 101	Padaria oliveira	{Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 12:30:05.765	2026-08-17 12:30:33.123
15c49346-3015-4190-af55-7bcdc095d897	Márcio Domingos - Ilha	21976393358	Ilha	Ilha do Governador	R	Estrada do Galeão - 92	\N	{Adesivo,Panfleto,Banner}	\N	1	\N	\N	PENDING	Em casa depois de 17:30	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 13:55:17.082	2026-08-17 13:55:17.082
7af536d6-0782-4e05-8ac1-e809f08e5917	José Nascimento	21964349405	Ilha do Governador	Ilha do Governador	Rio de Janeiro	Estrada Maracajá 494 - Galeão	\N	{Adesivo,Panfleto,Banner}	\N	1	\N	Tarde	PENDING	Entregar para a irmã Terezinha.	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 14:45:56.94	2026-08-17 14:45:56.94
52a9bd62-ad90-4812-a926-2d16d2942eb1	Ricardo	5521995875475	Nova Iguaçu	Copacabana	Rio de Janeiro	Rua Siqueira Campos, 43 - 829	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:06:04.68	2026-08-17 15:06:04.68
6c679ce5-dad0-4009-831d-ae5eff049142	Simões do Nascimento	5521976087398	São Cristóvão	São Cristóvão	Rio de Janeiro	Rua Major Fonseca 22 casa 2	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:11:54.183	2026-08-18 13:11:54.183
50726352-7c6b-405e-9ea0-389701a0dc03	Araujo Joao Costa	5521990058133	Paciência	Paciência	Rio de Janeiro	Rua Paulinho da Ilha, 61	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Em frente a igreja missionária da paz Comunidade da nova Jersey	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:09:01.779	2026-08-17 15:10:25.469
72594066-2e05-48a0-a30e-af650b0b05da	Marcelo	5521975956292	São João de Meriti	Éden	São João de Meriti	Rua Francisco Guimarães Neves, 299	Em frente a oficina do Alexandre, Portão de alumínio, Muro verde.	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:20:47.459	2026-08-17 15:20:47.459
d4276ee6-fe68-4922-b14f-fd3a6454f80e	Abisai Leite	21964413550	Campo Grande	Campo Grande	Rio de Janeiro	Estrada do Tingui 740, Fundos - Casa B	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 15:26:26.366	2026-08-17 15:26:26.366
aa697339-c791-4d7b-8c13-afaaf16d18d2	Rosimary Tostes	5521981394416	Inhaúma	Inhaúma	Rio de Janeiro	Rua Aitinga 75, 101	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:29:08.477	2026-08-17 15:29:08.477
1439951e-fa48-44e2-b3d1-e53d5ced16e4	Diniz da Silva	5521998364043	Ramos	Ramos	Rio de Janeiro	Rua Emílio Zaloar 67, AP 101 - Frente	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:36:44.222	2026-08-17 15:36:44.222
cc00cc33-f1e8-4d55-941a-db354ba71b6b	Carlos Rocha	5521995708155	Méier	Méier	Rio de Janeiro	Rua Pedro de Carvalho, 410 Casa 3 AP 202	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 18:28:33.73	2026-08-17 18:28:33.73
d5f5dd36-61b7-4a5c-b22e-c9a6afbcf42e	Ricardo	5521989351592	Freguesia JPA	Freguesia JPA	Rio de Janeiro	Rua Edgard Werneck 588 Casa 26	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 12:17:03.408	2026-08-18 12:17:03.408
fad6b81c-bd9b-4054-9c71-44fd1ec5cf5a	Diego	5521982671982	Bangu	Bangu	Rio de Janeiro	Rua topázio 81 fundos	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:13:04.339	2026-08-18 13:13:04.339
a08d9bf1-1564-4da3-8b3b-1ef5e7f0fb5a	Beth Alves	5521974693437	Duque De Caxias	Nossa Senhora do Carmo	Duque de Caxias	Estrada do Calundu, 1000 - Residencial Pádua Bloco 1 AP 201	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:46:57.609	2026-08-18 13:46:57.609
249a3bba-12e4-42f8-98b5-08ce608554a9	Alessandra Figueira	21994545922	Radialista	Copacabana	Rio de Janeiro	Rua Pomoeu Loureiro - 64 casa 8	\N	{Adesivo,Panfleto}	\N	1	\N	Tarde	PENDING	Preferencialmente entre 15h e 18h durante a semana.	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 14:57:37.864	2026-08-18 14:57:37.864
975c7681-e348-4e9d-928c-636539179703	Luiz Fernando	21984333112	Centro	Centro	Rio de Janeiro	xxx	\N	{Panfleto,Adesivo}	\N	1	2026-08-19	Manhã	PENDING	Vem retirar	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 18:05:22.864	2026-08-18 18:05:22.864
1bf6053d-2d34-4448-a180-8a1371d431c4	Scooby/Felipe	5521992211487	Acari	Acari	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:09:17.354	2026-08-18 18:09:17.354
1d37ff53-68fe-4a36-8e0d-f1a20381bf81	Martha Santos	5521994449654	Copacabana	Copacabana	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	2026-08-24	\N	PENDING	Retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:07:56.437	2026-08-18 18:09:26.408
103aefb0-9246-41b6-bf0a-f47fed4ec6c8	Anderson Souza	5521966299856	Realengo	Realengo	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:33:09.368	2026-08-18 18:33:09.368
7167a15a-3460-4242-b24f-46fc45cedd6e	Kissila Escalzo	5521982124968	Gávea	Gávea	Rio de Janeiro	Rua Ibrahim Sued 5	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	o prédio é Minhocao. 261\npode deixar com o porteiro no nome da Kissila 413	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:43:50.333	2026-08-18 18:43:50.333
89fae1f2-b193-4195-9f42-a181763bc375	Monica	21967777646	Ilha do Governador	Ilha do Governador	Rio	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vai retirar com a liderança	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 19:32:33.177	2026-08-18 19:32:33.177
2316115c-6fc2-40b7-b98c-3e29b1401113	Carlos Elias	21965502896	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto,Bandeira}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 19:53:09.634	2026-08-18 19:53:09.634
d556fd15-bf68-40ae-93e2-61b3cb3bfec8	Catia dos Reis	21998898609	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vai retirar com a liderança	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 19:55:55.235	2026-08-18 19:55:55.235
a7f22999-8742-4062-a1b0-717e5d785417	Marcelo Fernandes	21987178676	Guadalupe	Guadalupe	Rio de Janeiro	Rua Nova Trento 305/101	\N	{Adesivo,Panfleto,Banner,Bandeira}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 20:13:19.321	2026-08-18 20:13:19.321
24b8a1e1-6e52-4925-a5d5-63e390747252	Tadeu	21994246624	Lapa	Lapa	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 20:35:09.886	2026-08-18 20:35:09.886
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "description", "updatedBy", "updatedAt") FROM stdin;
campaign_phones	["Telefone 1", "Telefone 2", "Telefone 3", "Telefone 4", "Telefone 5", "Telefone 6", "Telefone 7"]	\N	\N	2026-08-14 11:58:05.925
\.


--
-- Data for Name: volunteer_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."volunteer_requests" ("id", "fullName", "phone", "tag", "neighborhood", "city", "availability", "helpTypes", "helpOther", "status", "notes", "userId", "assignedToId", "createdAt", "updatedAt") FROM stdin;
034e4c12-ef07-4e0c-ad04-fa29decde137	Neide Oliveira	21983741628	Nova Iguaçu	Nova Iguaçu	Nova Iguaçu	{Manhã,Tarde,Noite,"Fim de semana"}	{Outro}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-07 20:30:29.889	2026-08-07 20:30:29.889
0bf74a9d-dd90-40b8-a89b-2527b5cbc98d	Maria Rosa	21959054791	Banquinha Carioca	Santa Teresa	RJ	{"Fim de semana"}	{Outro}	\N	PENDING_CONTACT	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-10 11:54:15.464	2026-08-10 11:54:15.464
d1d65999-4488-4c94-8bea-9224f3f8f58a	Rosenilda Amaral	21981984303	Audiencia Publica - Trabalho Informal	Centro	RJ	{"Fim de semana"}	{Outro}	\N	PENDING_CONTACT	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-10 12:01:51.791	2026-08-10 12:01:51.791
d57943e4-90fc-4d96-9832-2f4bcb9b1445	Juliana	21965697174	-	Centro	RJ	{"Fim de semana"}	{Outro}	\N	PENDING_CONTACT	Indicação da mãe (Rosenilda Amaral) para trabalhar na campanha	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-10 12:05:16.243	2026-08-10 12:05:16.243
439fec44-61f1-4bae-b15b-34f33976b899	Thais Maria	21966453267	-	Centro	RJ	{"Fim de semana"}	{Outro}	\N	PENDING_CONTACT	Indicação da tia (Rosenilda Amaral) para trabalhar na campanha	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-10 12:06:22.572	2026-08-10 12:06:22.572
aed88397-2879-41f5-9e5f-200f25e25d1f	Vitória Giovana	21986291289	-	Centro	RJ	{"Fim de semana"}	{Outro}	\N	PENDING_CONTACT	Indicação da tia (Rosenilda Amaral) para trabalhar na campanha	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-10 12:08:26.23	2026-08-10 12:08:26.23
af1b9f36-d49a-468b-8bdb-cf2ce010b362	Carlos Augusto	21985978816	Pedregulho	São Cristóvão	Rio	{Manhã,Tarde,Noite,"Fim de semana"}	{"Campanha de rua"}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-10 13:46:49.752	2026-08-10 13:46:49.752
56649afd-340c-4d62-a0eb-bffe4828cb61	Deuza Alves Ferraz	21960213306	Bangu	Bangu	Rio de Janeiro	{Manhã}	{"Campanha de rua"}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-11 13:32:03.119	2026-08-11 13:32:03.119
8db3d0e1-8019-4e75-8f21-b98d63185f62	Monica Albuquerque	21995329098	Botafogo	Botafogo	Rio	{Manhã}	{"Campanha de rua"}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-13 17:07:50.801	2026-08-13 17:07:50.801
0281b936-0c46-4b2b-ad60-0b670deaa8d2	Andressa Freitas	5521981988609	Vista Alegre	Vista Alegre	Rio	{Manhã}	{"Campanha de rua"}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-13 18:50:12.317	2026-08-13 18:50:12.317
766436b5-3e70-4b9f-b9a6-3e987cfb76a0	Arlei Coelho	5521997873871	Campo Grande	Cam	Rio de Janeiro	{Manhã,Tarde,Noite,"Fim de semana"}	{"Campanha de rua",Eventos}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-14 13:01:44.951	2026-08-14 13:01:44.951
219d5793-b693-4da4-99ab-c602772e2644	Lucas Mugon	5521969630991	Belford Roxo	Belford Roxo	Belford Roxo	{Manhã}	{"Redes sociais"}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-14 17:58:44.928	2026-08-14 17:58:44.928
2cd50bc6-ff6f-43a7-a357-40c665d88928	Luiz Fernando	21984333112	Centro	Centro	Rio de Janeiro	{Manhã}	{Material}	\N	PENDING_CONTACT	Vem retirar	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 17:56:07.841	2026-08-18 17:56:07.841
67ef3c94-e279-463f-a212-dd0b1ff24c0b	José Nascimento	21964349405	Ilha	Ilha do Governador	Rio de Janeiro	{"Fim de semana"}	{"Redes sociais",Material}	\N	PENDING_CONTACT	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 14:43:10.505	2026-08-17 14:43:10.505
2c898224-85c0-4b86-a06e-bd07da2f9326	Márcio Domingos - Ilha	21976393358	Ilha	Ilha do Governador	Rio de Janeiro	{"Fim de semana",Tarde}	{Panfletagem,"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	Em casa depois de 17:30	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 13:47:36.625	2026-08-17 14:43:24.56
1b25f9a1-77db-45b6-bf4f-59a787ef1103	Jehro Gueiros	21999005887	Freguesia JPA	Freguesia JPA	Rio de Janeiro	{Manhã}	{Panfletagem,"Agenda de rua",Material,"Redes sociais"}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 14:43:59.708	2026-08-17 14:43:59.708
9f23b54f-f383-4aa7-ae1c-6c6d3984ba1f	Abisai Leite	21964413550	Campo Grande	Campo Grande	Rio de Janeiro	{"Fim de semana"}	{"Redes sociais",Material}	\N	PENDING_CONTACT	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 15:27:29.739	2026-08-17 15:27:29.739
29465473-11d6-4f0f-a4f2-18f33897b62b	Diego	5521982671982	Bangu	Bangu	Rio de Janeiro	{Manhã}	{Panfletagem,"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:36:07.846	2026-08-18 13:36:07.846
c644e06d-946a-4f54-8532-8dce516492ec	Simões do Nascimento	5521976087398	São Cristóvão	São Cristóvão	Rio de Janeiro	{Manhã}	{Panfletagem,"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:40:20.071	2026-08-18 13:40:20.071
56747ec1-5437-4465-80fc-9f6bc2804a96	Beth Alves	5521974693437	Duque De Caxias	Nossa Senhora do Carmo	Duque de Caxias	{Manhã}	{"Agenda de rua","Redes sociais",Panfletagem,Material}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:50:22.013	2026-08-18 13:50:22.013
803a6e18-2274-4f92-a37e-9c63ac57dfa7	Alessandra Figueira	21994545922	Radialista	Copacabana	Rio de Janeiro	{Tarde}	{"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 14:53:56.465	2026-08-18 14:53:56.465
17c5bad4-92d8-4cdb-9a43-ff2881f6ea56	Janio Santos	5521986350829	Guaratiba	Guaratiba	Rio de Janeiro	{Manhã}	{Panfletagem,"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 17:50:10.981	2026-08-18 17:50:10.981
\.


--
-- Data for Name: whatsapp_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."whatsapp_groups" ("id", "name", "link", "userId", "createdAt", "updatedAt") FROM stdin;
8d25c1f5-f7a7-4a8d-8037-0152f340f37d	Leonel de Esquerda com Piedade	https://chat.whatsapp.com/DZKRJY6noAvLxAXm32QrBw	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 16:24:34.834	2026-08-12 16:24:34.834
553c610f-11f5-446e-aea3-0312fd33f07f	TIME LEONEL DE ESQUERDA 🫱🏽‍🫲🏾🌟	https://chat.whatsapp.com/Hk8zDaJZAJG6iSG0apAYG6	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:51:05.807	2026-08-12 17:51:05.807
d2331e56-d998-41a5-9cd9-2d811464f99e	Leonel de Esquerda com Caxias	https://chat.whatsapp.com/GqmIAiYqRMoBElFR2YId2k	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:51:40.306	2026-08-12 17:51:40.306
43a26819-1dbd-4aef-94f4-16cb668861ab	Cachambi fechado com Leonel	https://chat.whatsapp.com/DklHetJQ8KB94ILi96goJm	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:52:11.205	2026-08-12 17:52:11.205
941c110a-4ecf-47de-958f-cf2f0a7ece78	Leonel de Esquerda e Reimont	https://chat.whatsapp.com/KKEr3iPsQ4kLnEwDsMs8pl	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-12 17:52:44.488	2026-08-12 17:52:44.488
7b5e264a-45db-43fc-84cd-69ef95a39571	VEREADOR LEONEL DE ESQUERDA JUNTO COM CAMELÔS ✊🏾	https://chat.whatsapp.com/KmiXXfmY47d3K44fSaItZb?s=cl&p=a&ilr=1	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:56:10.116	2026-08-12 17:56:10.116
236dc4d2-7162-40cb-bcfa-5fff1c7e9867	Leonel de Esquerda + Ilha do Governador	https://chat.whatsapp.com/DqdSsF3uQ2Y5BxKVNZNaw5?s=cl&p=a&ilr=1	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 17:57:09.009	2026-08-12 17:57:09.009
e057b5b8-6004-4316-bf1e-4d66e65d94ec	FAMILIAS COLEGIO FRANÇA E SOUZA	https://chat.whatsapp.com/KP1lRspULq8AfBWc0Sfi6V?s=cl&p=a&ilr=1	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:57:46.073	2026-08-12 17:57:46.073
4dde7495-ed92-47c6-9225-8c9b8f3d7d45	Unidos pela Radiossonda ✊🏾	https://chat.whatsapp.com/LpHhrVYz3Ye0nT2Os8rfap?s=cl&p=a&ilr=1	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 17:57:49.881	2026-08-12 17:57:49.881
99bf4468-137f-458b-aaae-fcedc8b2b640	RUA EMBIRI - INFORMES	https://chat.whatsapp.com/BAJPUETu5ASGLFFtefOXxB?s=cl&p=a&ilr=1	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:58:16.301	2026-08-12 17:58:16.301
e71fd59a-add2-4b21-971e-d357ae6c9d1f	RUA GARFIELD DE ALMEIDA/NABUCO DE ARAUJO - INFORMES	https://chat.whatsapp.com/Jsc9S1eJ5521oCbfQLGJ5A?s=cl&p=a&ilr=1	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 17:59:14.282	2026-08-12 17:59:14.282
ffe43800-26b8-477c-93df-e2efdb101150	TRAVESSA GODINHO DA COSTA/MANGUEIRA - PIEDADE - INFORMES	https://chat.whatsapp.com/DMcWN7f9ZHuIUJYfXbXbf9?s=cl&p=a&ilr=1	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-12 18:00:45.314	2026-08-12 18:00:45.314
f3f70309-8dd7-428c-8102-99fea3fe2ac0	Ver. Leonel / Velha Guarda	https://chat.whatsapp.com/Gvp8lE1tpwVHF1U8UYDE8b?s=cl&p=a&ilr=1	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 18:03:34.076	2026-08-12 18:03:34.076
3d754dad-3dc5-4583-929d-8e58c45daff4	Leonel de Esquerda com Somos Todas Professoras	https://chat.whatsapp.com/GGb1Ng0VapBB6tA9vdZjBm?s=cl&p=a&ilr=1	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-12 18:05:59.164	2026-08-12 18:05:59.164
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict iPld9l3KcWpyvXlJdgbaPdd1f48QQspqsvJHAyq2nov9GESFamxwplk7mtEGbZu

RESET ALL;
