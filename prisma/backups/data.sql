SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict d5mS8JWKbUejr0rucAiZqEEqnbRmcyYZ0PMgrlFi9hxMmwZgb0k9AfY0We6kPWc

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
1814cb3a-5e52-4a39-bbb9-3c781f075d4f	Gabriel - Telefone 1	gabkimmemgs@gmail.com	$2b$12$aQkFo9JAHMZTNkyf/EKhLOsge6TaGzQNprRQLzvjmHFmcte.T7ccm	OPERATOR	\N	t	2026-08-24 19:25:31.158	2026-08-24 19:25:31.158
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
636fb25d-423c-4c89-8561-673a1e440e4a	CREATED	MATERIAL_REQUEST	3e18f47d-9eca-4a67-8a99-6a1011f452bc	Pedido de material criado (Gabriel Conte)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 12:00:11.676
1a985bb0-0a90-42d3-8613-a985ee833bc2	CREATED	VOLUNTEER_REQUEST	e724decc-1c16-4cfb-aee2-6ecb4df16e40	Pedido de trabalho criado (Gabriel Conte)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 12:00:52.397
c130c91d-68f9-462a-9ae2-2c7faabedc08	CREATED	MATERIAL_REQUEST	92e003bc-d350-42da-8360-d332cf69ac5d	Pedido de material criado (Sinval Aço)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 13:13:36.713
6af48dfd-3fd4-4435-8c3a-f5f04d1a6627	CREATED	VOLUNTEER_REQUEST	df8b9a31-67f5-4dcd-be26-6a64c5dcc347	Pedido de trabalho criado (Marcelo Ferreira dos Santos Junior)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-19 14:49:00.061
888ca35d-3fd7-4f0e-b910-4b9340b7a1b6	CREATED	MATERIAL_REQUEST	3dc68a2c-106c-42ad-a3fc-b316f3288a23	Pedido de material criado (Monica)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 15:21:19.469
f3ce2aae-ef27-492c-a887-15a19e762f16	CREATED	VOLUNTEER_REQUEST	70cccb75-950f-4ba3-b214-84841f918f9f	Pedido de trabalho criado (Beatriz carneiro da Rocha)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-19 15:25:16.866
3b57a0b7-b841-4b58-b339-203ccd341133	CREATED	VOLUNTEER_REQUEST	b1c7bf4b-e291-4765-a52e-8186e6001bbc	Pedido de trabalho criado (Julio Cesar Souza leite)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-19 15:31:10.092
4b849627-b325-4b3b-bcf7-c8ae3f35cf06	CREATED	VOLUNTEER_REQUEST	ed333c6f-38ac-45b3-b3b2-920689fc58d8	Pedido de trabalho criado (Isabella de Barros Muniz e Silva)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-19 15:34:39.628
9de9bcb1-9f16-4bd7-811f-6e21cf26ed41	CREATED	MATERIAL_REQUEST	3b434b6d-8e84-4324-a5ff-ff7cb97ba47a	Pedido de material criado (Verena)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 16:07:38.497
77cb86dc-6cb5-4698-8684-dbad507d4906	CREATED	MATERIAL_REQUEST	3da56982-e040-42e6-bf09-ee366520be5c	Pedido de material criado (Elaine Cristina)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 16:23:35.183
fe990c4f-d153-427f-997a-b2b4fd8b480c	CREATED	MATERIAL_REQUEST	41797ded-6c42-4548-9d8e-01d83dce9c55	Pedido de material criado (Zaira)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 16:24:49.058
5b4c1723-4fc6-4d13-90a4-ec4d0a0b30e7	CREATED	MATERIAL_REQUEST	8efe0cf0-d054-4579-914e-fc69fae94023	Pedido de material criado (Gilson Alves)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 16:26:25.732
a9089682-d9d5-43d7-970b-b2e0f347c171	CREATED	MATERIAL_REQUEST	27188b24-282a-4d6c-8c97-1110a6dc3ed2	Pedido de material criado (Andressa Freitas)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 16:48:20.055
db7d8186-8859-432a-a91d-3f7538c79036	CREATED	MATERIAL_REQUEST	6403d3dd-511a-4651-873c-c98f8c8c9e78	Pedido de material criado (Adilson)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 18:05:41.02
93f5e684-5d81-4cd7-b96f-1f50234e9bc3	CREATED	MATERIAL_REQUEST	51315981-d5e3-4aa6-ba84-c364ceea76bd	Pedido de material criado (Bebeto)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 18:11:24.642
384820ce-ab9f-48c3-892a-5f5422eb6ad5	CREATED	MATERIAL_REQUEST	96af6942-c987-4176-ab63-86b33e640b0f	Pedido de material criado (Deuza Alves)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 18:25:57.46
43311941-bcd8-459c-86d7-4420ef30e738	CREATED	MATERIAL_REQUEST	be7cd43c-1c07-463d-a2e2-2f6630117898	Pedido de material criado (Fabrício)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 18:44:43.712
a3ab68fa-1a67-4da5-88eb-25d445a60dd2	CREATED	VOLUNTEER_REQUEST	06fe5422-543a-43e0-8401-515b152f71eb	Pedido de trabalho criado (Fabrício)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 19:01:02.422
35f66d51-4cc6-4830-9f03-b8ca403c311c	CREATED	DAILY_REPORT	ed0f3978-3e50-41ab-a42b-3840c19d8a71	Relatório criado (Avulsos, 2026-08-19)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 19:03:11.896
2cc56c0a-11ce-43ad-abb5-9ae86c9cd7f3	CREATED	MATERIAL_REQUEST	85959375-8208-4264-b717-c5003c3a66b6	Pedido de material criado (Kadu Portuga)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 19:14:38.525
4e74c0dd-9ad3-4f6d-809a-b5006b2a39ac	CREATED	MATERIAL_REQUEST	e96a5f86-1416-46ee-93c4-010212124312	Pedido de material criado (Wanderley)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 20:03:41.513
9e090df8-7b37-4f2c-89fa-fe149b148bae	CREATED	MATERIAL_REQUEST	d176733b-06c7-4fd2-8dda-98ce1c81a3e6	Pedido de material criado (Cristiano)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 20:13:47.668
f91fbd78-b6cd-4bfc-bd98-4281b5b4e3dc	CREATED	MATERIAL_REQUEST	8da56fed-d2b3-4920-a91b-43a0ba5f42bb	Pedido de material criado (Pedro Veras)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 20:24:30.239
a1e3bff4-ea2f-4410-9ee4-3c84b5648912	UPDATED	MATERIAL_REQUEST	8da56fed-d2b3-4920-a91b-43a0ba5f42bb	Pedido de material atualizado (Pedro Veras)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 20:24:48.288
6791476d-01a8-49a0-988e-f58c2bc05b31	CREATED	MATERIAL_REQUEST	b97c1410-15d8-4589-b720-de35b04203c1	Pedido de material criado (Ricardo Silva)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-19 20:35:41.723
15f99bb3-9574-47b6-9a53-1c5609f7f9a4	CREATED	MATERIAL_REQUEST	73722744-781c-46ac-9caa-b1824de110ac	Pedido de material criado (Luiz Eduardo)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 14:13:23.202
b64845ea-c96d-4bf0-b33a-10b35021b4d4	CREATED	MATERIAL_REQUEST	b2ad7294-6077-4139-88a9-88206270af57	Pedido de material criado (Luciana Santos)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-20 15:15:03.083
3af05442-7bc4-4bc5-8c10-4b74fb977891	DELETED	MATERIAL_REQUEST	b2ad7294-6077-4139-88a9-88206270af57	Pedido de material excluído (Luciana Santos)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-20 15:20:14.625
864ac6fe-499e-406e-8c14-962291b5d6a6	CREATED	MATERIAL_REQUEST	7fe4015f-e195-486b-88f4-012a689db726	Pedido de material criado (Luciana Santos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 15:20:17.654
a6731446-c432-4fcc-bae8-5d309cfb4855	CREATED	VOLUNTEER_REQUEST	e11f0934-d419-4b9f-a5f4-8de175cd64e5	Pedido de trabalho criado (Cayo Cesar de Jesus sales)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 15:28:10.203
b9515420-2011-4f8c-8751-5a4f0065b3c5	CREATED	MATERIAL_REQUEST	3a17a117-232f-4224-afa1-b627ab303827	Pedido de material criado (Marcos Amorim)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 15:29:04.672
c1289397-efbc-4cef-b7ff-e00e81d34c4b	CREATED	MATERIAL_REQUEST	70fdea7d-6393-4887-8160-d0d09cef6c2a	Pedido de material criado (Alessandro Melo)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 15:39:07.65
582c0fd4-6382-4b25-8dbb-529645722e2f	CREATED	MATERIAL_REQUEST	1ff6191a-5c42-4f8f-bd44-1b287a28c775	Pedido de material criado (Roni)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 15:55:33.459
d30eedeb-e95c-40f2-ad2f-fc1231547da3	CREATED	MATERIAL_REQUEST	eeb3ae7a-6629-46ba-98cb-5c6620db25ef	Pedido de material criado (Luizinho)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 16:17:48.912
4fbd0ea0-44a8-46c8-814f-ef6194ace4d8	CREATED	MATERIAL_REQUEST	057f2274-25db-4b8c-a760-07cc0c2437ac	Pedido de material criado (André Santana)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 16:23:35.3
ea5b8bb5-1440-4411-a912-c9d358611ec6	CREATED	VOLUNTEER_REQUEST	1353d4b7-f8d0-42aa-a177-afa6b1afa012	Pedido de trabalho criado (Andressa Freitas)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 16:25:27.504
cd9b55f7-24e5-4dfc-acd0-c5f1be0bc764	CREATED	VOLUNTEER_REQUEST	c0597986-a847-463e-a6e8-e11e5f72ad25	Pedido de trabalho criado (André Santana)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 16:38:25.985
10fab210-a398-40e0-a3f7-200ce116420c	UPDATED	MATERIAL_REQUEST	50726352-7c6b-405e-9ea0-389701a0dc03	Pedido de material atualizado (Araujo Joao Costa)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-20 16:47:04.369
518c65f5-1c4f-4b2a-a525-071dbf213999	UPDATED	MATERIAL_REQUEST	51793f21-a52d-4613-9650-8018141a8a37	Pedido de material atualizado (Marcos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 17:06:11.302
74ff1185-568d-4e14-b29b-6ec1614413b9	CREATED	MATERIAL_REQUEST	d03eedc6-12af-4f57-a632-0475e0f5c2b1	Pedido de material criado (Rodolfo de Souza)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 17:14:47.87
7c53b6b5-20ad-4631-9b2a-fa1c77d9b62e	CREATED	MATERIAL_REQUEST	bc37f379-90ec-46d0-b422-cb90abe548e5	Pedido de material criado (Miriam)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 17:29:52.891
54a9d549-0a45-4dee-895d-81dd4e1be41b	CREATED	MATERIAL_REQUEST	848af1d0-30d0-47c9-a025-c48a38dfc92c	Pedido de material criado (Mauro)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 17:37:02.222
1392d017-0f1f-4c74-a343-cdb77bf03d90	CREATED	MATERIAL_REQUEST	46bc6c48-c7db-4ea8-8370-660980befb40	Pedido de material criado (Drikka Ramos)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 17:41:19.623
ec297991-5f6c-41aa-a8fd-74937147f60f	CREATED	MATERIAL_REQUEST	658e63f1-9802-48e4-8031-8a65a5e7aad9	Pedido de material criado (cláudio Fernando)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 17:42:50.049
b1b77a4f-8e42-4fe1-9acc-d3886dad4f02	UPDATED	MATERIAL_REQUEST	658e63f1-9802-48e4-8031-8a65a5e7aad9	Pedido de material atualizado (fabio)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 17:44:31.606
a66dd697-844b-4b10-bd96-73c6e15c0102	CREATED	MATERIAL_REQUEST	7143f7ec-680b-446c-885c-07beddf7b60b	Pedido de material criado (Cláudio Fernando)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 17:58:03.701
3820ddba-68fc-4c40-83f0-c505eb095bfa	UPDATED	MATERIAL_REQUEST	658e63f1-9802-48e4-8031-8a65a5e7aad9	Pedido de material atualizado (Fábio)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:04:49.649
d1adbd5d-a354-4bf3-89c7-5c5151236856	UPDATED	MATERIAL_REQUEST	46bc6c48-c7db-4ea8-8370-660980befb40	Pedido de material atualizado (Drikka Ramos)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:06:38.767
6986fac3-20ff-4c2b-8b8d-81d403007ee3	UPDATED	MATERIAL_REQUEST	848af1d0-30d0-47c9-a025-c48a38dfc92c	Pedido de material atualizado (Mauro)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:08:23.584
0523ce0d-7f14-4d91-a37b-23bded1a2df8	CREATED	MATERIAL_REQUEST	4e333133-26c2-44e3-a834-8aa35bf844a9	Pedido de material criado (Arlei Coelho)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:11:27.159
a8414c71-4639-464e-a08a-2d0dc7190734	CREATED	MATERIAL_REQUEST	3f5036ba-35bc-49b5-93f8-dba4f234377d	Pedido de material criado (Luizinho Moura)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:13:57.604
e342282d-6cbd-4d33-b5dc-10d2fdc5ae79	CREATED	MATERIAL_REQUEST	a0f2a9c9-c491-4b2b-b607-46f9adcb3ec4	Pedido de material criado (Hugo Henrique)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:15:45.185
de061338-012f-4db5-b987-47cbdea9ae89	CREATED	MATERIAL_REQUEST	b221f997-f2f2-473f-812b-20b2edae63a8	Pedido de material criado (Daniel Lopes)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 18:16:52.486
f8ca6ecc-e984-4d1a-80d5-380e2916d07a	CREATED	MATERIAL_REQUEST	d372c5f8-d2df-4e53-a062-bc0a9ca2101b	Pedido de material criado (Adilson Moreira)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:18:35.684
c84526f4-1892-4c67-87f3-09c42f21fbb3	CREATED	MATERIAL_REQUEST	c616c631-3963-469e-b25c-2dc6ac25ac0f	Pedido de material criado (Hiago Felipe)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 18:25:06.977
2295a4d7-68ed-4392-97c3-e5fd3846fc9d	CREATED	MATERIAL_REQUEST	7df9064d-c00e-432a-bfbf-0c61abd7576e	Pedido de material criado (Rafael Vila)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 19:27:14.215
50824e3b-7d4d-4e5f-bd16-38e53b5f3da7	CREATED	MATERIAL_REQUEST	79227a8d-476b-41cb-b40b-fb98c7857228	Pedido de material criado (Adriana)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 19:30:03.656
c30e5fcf-5121-4b64-ba62-ddde0cc49670	CREATED	MATERIAL_REQUEST	5eba6e85-b9c2-4e93-b079-d582f9febeaa	Pedido de material criado (Marcelo)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 19:31:51.746
2842df5d-9b75-4156-a25f-f236e244485d	CREATED	MATERIAL_REQUEST	31e1a775-2f67-433c-91fb-af7039adb136	Pedido de material criado (Eduardo)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 19:33:18.893
868dc9a2-4228-4010-b04b-42e32e47575b	CREATED	MATERIAL_REQUEST	4d5762bb-5c10-4230-9f67-0e0403564756	Pedido de material criado (Richard (Shalon))	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 19:35:20.042
38fab4b9-df69-437b-afef-8c126521455e	CREATED	MATERIAL_REQUEST	ca995aaa-2a09-458c-a625-bc27d1a5df0e	Pedido de material criado (Alexandre)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 19:36:07.476
e817661e-1c98-4bd2-9405-bb2485ec5d3c	CREATED	MATERIAL_REQUEST	2584b3d0-aae2-4ff1-8ad1-5e191692855c	Pedido de material criado (Tony)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 19:38:36.99
2e60953a-6b2c-4d89-9c6f-b2343ae1ce92	CREATED	MATERIAL_REQUEST	53e51135-0e99-4654-9a75-5e116632c22d	Pedido de material criado (Alexandre)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 19:39:00.508
6a5f58e7-c74c-4877-ac21-0dbdfeb435d8	CREATED	MATERIAL_REQUEST	54872030-02d9-46ef-8531-9f4b0cf33aa1	Pedido de material criado (Leo Braga)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 19:44:51.893
98cec1bd-6ca1-4537-8163-5a368b1f3a05	CREATED	MATERIAL_REQUEST	d3a6f040-cff8-4a7e-907e-b534a1f20800	Pedido de material criado (Francisco)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-20 19:48:22.967
5754d415-8959-406f-8419-a4d5ff6ed1d5	CREATED	MATERIAL_REQUEST	df02ed42-d127-42a6-95d0-aa98cd59edc5	Pedido de material criado (Márcio)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 19:54:56.119
e7903a01-aa4e-442a-890e-bb053ac43fab	CREATED	MATERIAL_REQUEST	3261d48f-a963-4edc-996a-97b366145f44	Pedido de material criado (Paulo César)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 19:59:15.803
73c5c3c4-eb77-45b3-a50d-298e43d31882	CREATED	MATERIAL_REQUEST	49ea0316-9623-48ce-a5f0-a5f136d24064	Pedido de material criado (Tatiane)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-20 20:03:28.791
b4571fd7-5c3a-4820-a8a1-baaa79bdea82	CREATED	MATERIAL_REQUEST	6f13695c-3568-4f17-90ba-af050a349a62	Pedido de material criado (Renata)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 20:16:42.784
b12879b3-7e08-47d5-8adc-8a4bfb5f766d	CREATED	MATERIAL_REQUEST	3eada87b-c851-4ce4-a2cb-e1dc5fee8ed1	Pedido de material criado (Valdir Xavier)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-20 20:22:51.177
360241c2-2586-47de-a7a1-56aeea23e08d	CREATED	MATERIAL_REQUEST	a9fab8ad-e7d2-45e4-9206-8bcfc90c839d	Pedido de material criado (Lalo ze amigo)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 20:42:17.892
99ef8fde-07c5-4169-82e1-2530c2565cb9	CREATED	MATERIAL_REQUEST	9a56b0cf-3207-4ded-9522-8c3a85884cd0	Pedido de material criado (Felipe Aniversário Leonel)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:43:01.184
3a435462-3c5a-4c5c-85a9-df57808b9731	CREATED	MATERIAL_REQUEST	923db942-a8ef-4f47-be43-0b88b7532c0f	Pedido de material criado (Cris Mães BSC)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:44:52.408
12a32eea-b7f2-40e7-b235-65e5777a0bbe	CREATED	MATERIAL_REQUEST	b3caddfd-9e59-4b47-ae37-773206c49713	Pedido de material criado (rogerio)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 20:46:17.043
e9c32c6e-1ec4-48da-ab89-f6b696ac290f	CREATED	MATERIAL_REQUEST	5c095c52-cec7-4a1c-ac63-a95ca0b2ea5d	Pedido de material criado (Betania Oliveira)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:47:53.642
86308ed0-78bd-456a-ad9d-acf9cb0856e4	CREATED	MATERIAL_REQUEST	3272c91b-5495-4cdc-8f83-4f50863ffc7f	Pedido de material criado (marcelo acari)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 20:48:34.269
245e056c-ecdd-4a4e-9fde-c1f0388598e4	CREATED	MATERIAL_REQUEST	5e8b6357-b8d5-481e-899f-9be342184ece	Pedido de material criado (MARIA DA CONCEIÇÃO)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:50:14.353
ccdd4fb4-25b8-47c9-9a43-53f07cd0c04b	CREATED	MATERIAL_REQUEST	95110e9b-c5df-4d83-8f2d-2f220829d87e	Pedido de material criado (edvania maria)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 20:51:48.216
6b7c2327-4801-4586-8795-0bc7e3aa4add	CREATED	MATERIAL_REQUEST	8345dd96-47e6-4f97-bddf-9b2bf4ff5f1c	Pedido de material criado (LUIZ JR.)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:52:15.356
71e800ba-161c-47d8-8a5d-72c88dff8037	CREATED	MATERIAL_REQUEST	d23baa68-800d-4704-889a-ec256c486095	Pedido de material criado (ARTHUR SOUZA)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:54:27.656
e38e26b9-9257-43e6-88c7-1d4d2b27ba44	CREATED	MATERIAL_REQUEST	701f9e68-254b-40e7-ad41-73782f6ec816	Pedido de material criado (samuel)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 20:54:38.308
a823a2f3-30cf-43f0-aa80-b3d9a308ba91	CREATED	MATERIAL_REQUEST	eda89e3b-8ddb-4fa6-982b-1eff684be5c1	Pedido de material criado (ANDRE RIVAROLA)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:56:24.01
a651ee77-e1d5-4dc5-9766-c35d1823c9ab	CREATED	MATERIAL_REQUEST	923e3a54-4c8e-487e-b259-a28117ce0707	Pedido de material criado (CARLOS HENRIQUE)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 20:58:04.954
3018ebae-e672-4218-b1f1-2a163e659f3c	CREATED	MATERIAL_REQUEST	816d5f3e-4cb1-43f1-9bc7-cca315bfd88b	Pedido de material criado (priscila)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 20:58:31.879
d1b6f2d6-ef75-40e5-b1a9-72db5114c8fd	CREATED	MATERIAL_REQUEST	0aa554df-84e6-4190-90c1-a21c2001df0e	Pedido de material criado (DIEGO AMORIM)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 21:00:14.415
07cd74e2-30d9-4d0f-b529-4899be69d950	CREATED	MATERIAL_REQUEST	76ddca36-76ea-4aa9-b875-a58402099501	Pedido de material criado (carlos jr)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 21:00:46.021
3f723841-0339-4121-9f0c-1f5e47aec677	CREATED	MATERIAL_REQUEST	97f3cf60-8c55-49b2-8179-64f036e7f28f	Pedido de material criado (ALEXANDRE MENDES)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 21:01:47.875
659f90a3-7bc2-4c22-a270-ec5d77aff3ad	CREATED	MATERIAL_REQUEST	b22b5b2f-6869-40d8-813b-c3a744d11bed	Pedido de material criado (CLAUDIA RODRIGUES)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 21:03:38.559
bc5ad86e-81ee-4dd3-a0a9-c7377ec5c5e6	CREATED	MATERIAL_REQUEST	88d482de-30b6-4eb3-a8c5-7b6b4ac011d1	Pedido de material criado (DANIELE CARDOSO)	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-20 21:04:48.53
b4eb9abe-5432-46c7-9975-353f911d7851	CREATED	MATERIAL_REQUEST	5f83e86b-1165-4481-9cbf-7b3e3c70a66e	Pedido de material criado (daniele)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-20 21:06:28.328
65ff11cc-2eda-4ea7-a80b-335e9ae195cf	CREATED	DAILY_REPORT	b47d4f00-68bd-467a-81c0-09957c026108	Relatório criado (Avulso, 2026-08-20)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-20 21:17:42.378
1a5cdb03-43fe-45b8-907f-5fa9fd3713ed	UPDATED	MATERIAL_REQUEST	d3a6f040-cff8-4a7e-907e-b534a1f20800	Pedido de material atualizado (Francisco)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-21 12:55:19.169
a9c29d0d-73c8-4ae4-b103-1a55862855e2	CREATED	VOLUNTEER_REQUEST	43622587-8152-4ee9-a1bd-88680aba77d9	Pedido de trabalho criado (Scooby/Felipe)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 14:01:10.347
4f052c8b-80ac-41aa-85df-c1aabff9722c	UPDATED	VOLUNTEER_REQUEST	43622587-8152-4ee9-a1bd-88680aba77d9	Pedido de trabalho atualizado (Scooby/Felipe)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 14:01:25.17
e0bafbaf-8cbb-46d2-9699-db380b2aa00e	UPDATED	MATERIAL_REQUEST	95110e9b-c5df-4d83-8f2d-2f220829d87e	Pedido de material atualizado (edvania maria)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-21 14:24:16.485
e9c8a2f3-0ad1-4394-80ac-b4a76a72ec03	CREATED	MATERIAL_REQUEST	a860bccc-b24a-41ff-b7c6-bf8bf5c0e5fa	Pedido de material criado (Carlos Elias)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-21 14:34:53.671
81839166-56e1-443b-ae8c-e145a0c1e649	CREATED	MATERIAL_REQUEST	fa75bb18-b6aa-4fcc-b846-204487226cf9	Pedido de material criado (Neide Oliveira)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-21 15:23:20.25
9a38f028-daed-4b78-bbe8-57dd95c0e37c	CREATED	MATERIAL_REQUEST	d9347846-b0a6-4f54-8414-0cf97fa72d80	Pedido de material criado (Luciana Vilela)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-21 15:48:45.842
8065f556-e38e-49d5-902c-6157f7403cfc	UPDATED	MATERIAL_REQUEST	249a3bba-12e4-42f8-98b5-08ce608554a9	Pedido de material atualizado (Alessandra Figueira)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 17:59:50.774
72e3b5f8-282c-4227-856a-5bd6c5dbda27	UPDATED	MATERIAL_REQUEST	5e8b6357-b8d5-481e-899f-9be342184ece	Pedido de material atualizado (MARIA DA CONCEIÇÃO)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:00:16.282
d1c0d643-f4e2-437b-b020-ea293a793e5f	UPDATED	MATERIAL_REQUEST	5c095c52-cec7-4a1c-ac63-a95ca0b2ea5d	Pedido de material atualizado (Betania Oliveira)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:01:43.274
2ed272ff-10c9-464b-a712-8ef3c9041467	UPDATED	MATERIAL_REQUEST	923db942-a8ef-4f47-be43-0b88b7532c0f	Pedido de material atualizado (Cris Mães BSC)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:02:22.295
ee9fb6c5-2957-487a-9c9e-77588a6f7486	UPDATED	MATERIAL_REQUEST	24757c49-49e8-4dbb-9357-f6d1dfcede01	Pedido de material atualizado (Cybelle Ribeiro (Vozinha))	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:02:50.966
87342752-734d-4a34-a242-a28829f7cf2e	UPDATED	MATERIAL_REQUEST	3261d48f-a963-4edc-996a-97b366145f44	Pedido de material atualizado (Paulo César)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:03:08.402
2f768626-d3ca-407c-8fc2-012dd04c49ea	UPDATED	MATERIAL_REQUEST	7167a15a-3460-4242-b24f-46fc45cedd6e	Pedido de material atualizado (Kissila Escalzo)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:04:07.939
dc82585b-61a6-458a-a23e-058484d89c3d	UPDATED	MATERIAL_REQUEST	52a9bd62-ad90-4812-a926-2d16d2942eb1	Pedido de material atualizado (Ricardo)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:04:35.226
8ba1b069-950a-462b-92f7-c55fb65962b1	CREATED	MATERIAL_REQUEST	d241885d-c198-4f87-a8b4-089066698905	Pedido de material criado (Diego (Saens Peña))	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:07:15.671
f42fd681-b589-40d7-b6ec-4eff312b1ffb	UPDATED	MATERIAL_REQUEST	d241885d-c198-4f87-a8b4-089066698905	Pedido de material atualizado (Diego (Saens Peña))	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 18:07:22.174
8d4e924b-c271-48b5-9782-e3d70fd83b6c	CREATED	MATERIAL_REQUEST	0fe12ba1-8543-438b-8fae-5c09c73fb98c	Pedido de material criado (Carlos)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-21 18:32:21.265
ea9a3770-5595-4aa4-8be6-a251e0ce62a7	CREATED	MATERIAL_REQUEST	b0ec21d6-a793-44be-a3af-1aa80e162faa	Pedido de material criado (Francisco Carlos)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 19:01:33.9
0bced26c-9504-4ba3-af09-155e1a53a958	CREATED	MATERIAL_REQUEST	77639ea3-9c6c-45f8-934e-4f544724440b	Pedido de material criado (Sarah Soriano)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 19:08:31.572
2ce35278-52fd-4d57-8424-0f54eb45d3f6	CREATED	MATERIAL_REQUEST	e19e1e10-1dfb-4844-a032-9b5451020a0f	Pedido de material criado (Ildmar Couto - Barbudo)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-21 19:17:22.512
11be707f-dad2-4e99-aaf4-809aac6d667e	UPDATED	MATERIAL_REQUEST	e19e1e10-1dfb-4844-a032-9b5451020a0f	Pedido de material atualizado (Ildmar Couto - Barbudo)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-21 19:23:48.215
ffbc8194-8291-4748-b62a-4cc044682290	UPDATED	MATERIAL_REQUEST	e19e1e10-1dfb-4844-a032-9b5451020a0f	Pedido de material atualizado (Ildmar Couto - Barbudo)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-21 19:32:51.148
9f62273d-6def-4f78-9494-3584ca74e5c4	CREATED	MATERIAL_REQUEST	2d9090ad-573a-4ae4-a72f-74114f26a6bd	Pedido de material criado (Maria de Fatima)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 19:51:39.722
dc2b5f48-ea53-4da6-a380-621f32145f17	CREATED	MATERIAL_REQUEST	3550fccc-4b98-49c9-844d-e1e1c25260f2	Pedido de material criado (Genesio BASSON)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 19:58:19.204
b5115989-3028-4885-9053-b2956acd5b9a	CREATED	DAILY_REPORT	16a13a66-03b1-43f7-911f-5b4f95e22d63	Relatório criado (Avulsos, 2026-08-21)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 19:59:27.823
a9e274b2-dd11-4545-90d1-9557d8bcf100	UPDATED	MATERIAL_REQUEST	b22b5b2f-6869-40d8-813b-c3a744d11bed	Pedido de material atualizado (CLAUDIA RODRIGUES)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-24 15:43:14.807
919b84b4-874e-45f4-aaf1-e4c01d68fc44	UPDATED	MATERIAL_REQUEST	88d482de-30b6-4eb3-a8c5-7b6b4ac011d1	Pedido de material atualizado (DANIELE CARDOSO)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-24 15:43:36.939
587f64b6-4673-4a0d-9e49-4e9e4e22743c	CREATED	MATERIAL_REQUEST	10b3bb68-b0a4-4139-b439-29a9e0962d5d	Pedido de material criado (Pablo Henrique)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-24 15:53:08.613
43d1000c-b2d1-4940-b2c4-ec6fcc7462ab	CREATED	MATERIAL_REQUEST	2ef0c818-675d-4a1d-83a5-b08ad31dce41	Pedido de material criado (Luiz Antonio)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-24 16:21:06.506
51517348-82ef-4415-8167-14ce63118979	CREATED	MATERIAL_REQUEST	5f5890ab-6db2-47bc-ad7c-2a50062f5147	Pedido de material criado (Luiz Gonzaga - Guadalupe)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 16:44:31.792
e281dfc8-ff7a-4597-a376-cef4a8aedbef	CREATED	MATERIAL_REQUEST	7a145f91-1bb1-4660-84bd-1dbd5ef13a36	Pedido de material criado (Rodrigo Nascimento de Carvalho)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 16:49:20.815
4c7fef42-a7ab-4f93-a23d-38779b01cd59	CREATED	VOLUNTEER_REQUEST	2ca78adb-f1c4-41c8-ba55-7713665ee428	Pedido de trabalho criado (Marcos)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 17:02:59.778
cf2f87e1-c3d3-4efa-a946-529fe151b6ef	CREATED	MATERIAL_REQUEST	c6db4c9e-4404-402b-80e1-6c1dff080a2a	Pedido de material criado (Rocha)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 17:11:25.542
b3e9276b-9a94-4092-bf72-ff0fab07bc32	CREATED	MATERIAL_REQUEST	4abf08cd-7894-4e18-886b-342abc24ae4d	Pedido de material criado (Tony)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 17:57:45.397
adff5a8c-001e-4321-ace0-35b597d75cfc	CREATED	MATERIAL_REQUEST	f9ce73ba-926a-45e4-b3e1-9c76b38dcf3c	Pedido de material criado (Maria)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 18:02:50.119
db55fd21-f92a-4f47-b313-49f91f3dc860	CREATED	MATERIAL_REQUEST	5bfbe47e-504e-4404-8488-6099b1568e9c	Pedido de material criado (Arlei Coelho)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 18:09:24.333
a845543a-6178-43f6-a791-09263ac924d9	UPDATED	MATERIAL_REQUEST	5bfbe47e-504e-4404-8488-6099b1568e9c	Pedido de material atualizado (Arlei Coelho)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 18:15:51.336
4cb86143-5eca-4da1-8d6a-9823cdd513c6	CREATED	MATERIAL_REQUEST	4ae0d23a-91d3-4d16-a18b-fa897a8a4683	Pedido de material criado (Hugo Henrique)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 18:31:10.214
f3c8cc71-d97e-49d6-b859-261aa21a9e11	CREATED	MATERIAL_REQUEST	1c02d8c8-171e-40eb-927e-7a52eeffeed9	Pedido de material criado (Eduardo Matos)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 18:38:50.292
95a3f0cd-dfc8-4499-a60c-e257840b56e2	UPDATED	MATERIAL_REQUEST	1c02d8c8-171e-40eb-927e-7a52eeffeed9	Pedido de material atualizado (Eduardo Matos)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:10:47.846
95d81654-80e2-4075-8b79-08f0298bda78	CREATED	MATERIAL_REQUEST	648a338f-d681-454a-880e-496d275f60aa	Pedido de material criado (Maria Rosa)	\N	17852695-98dd-457e-8459-c409d223d417	2026-08-24 19:13:32.009
fe8ea794-0756-47dd-bbcc-679b71d1ad88	CREATED	DAILY_REPORT	2bed63e5-b7b6-46b8-a666-3d92acc414b9	Relatório criado (Avulso, 2026-08-24)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:16:39.823
5d842591-1635-40c1-9f31-6fc3417f4d1d	CREATED	DAILY_REPORT	3da93225-1aab-4e34-807c-e9fe71ef8c23	Relatório criado (Avulso, 2026-08-21)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:19:05.551
2f34c778-1f6b-4e97-b22f-462b021e5985	UPDATED	DAILY_REPORT	3da93225-1aab-4e34-807c-e9fe71ef8c23	Relatório atualizado (Avulso, 2026-08-21)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:19:45.814
da9872bf-2416-41dc-8a54-b0b3ebb9be43	UPDATED	DAILY_REPORT	3da93225-1aab-4e34-807c-e9fe71ef8c23	Relatório atualizado (Avulso, 2026-08-21)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:19:49.991
25d9e9cd-b88f-41b7-ae7f-6993b9245f87	DELETED	MATERIAL_REQUEST	5bfbe47e-504e-4404-8488-6099b1568e9c	Pedido de material excluído (Arlei Coelho)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:22:13.061
f6c75c6f-9afd-4517-89f7-9c39c0fd48ad	CREATED	MATERIAL_REQUEST	2ae9cc75-0997-4315-8450-3e75be6c37aa	Pedido de material criado (Rafael Ferreira)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 19:22:15.008
086562aa-9988-4223-bff7-92c7406c7d59	DELETED	MATERIAL_REQUEST	4ae0d23a-91d3-4d16-a18b-fa897a8a4683	Pedido de material excluído (Hugo Henrique)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:22:35.848
649b8dda-4f0e-4a11-a2c0-0f2bcc604795	CREATED	MATERIAL_REQUEST	1d6abd96-5348-43d5-a70e-6faea19b23e5	Pedido de material criado (Gonçalo Nunes)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 19:53:38.69
e986c302-2a45-4cb6-b85e-9269f7cbf2d1	CREATED	MATERIAL_REQUEST	0c3fa967-f330-4cef-9d0a-a2bfaaad0ec6	Pedido de material criado (Eduardo Carpenter)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 20:54:18.81
1a8c77bb-7f46-41e5-99b9-60ec0b29992c	CREATED	MATERIAL_REQUEST	34f726a9-84b4-4a1a-82f2-d82ffad1aca4	Pedido de material criado (Walter Francisco)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 21:13:22.284
516c4ac2-208c-4af1-85f8-72e7c11fe2da	UPDATED	MATERIAL_REQUEST	34f726a9-84b4-4a1a-82f2-d82ffad1aca4	Pedido de material atualizado (Walter Francisco)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 21:13:40.819
436cf7e2-366f-4017-a409-9b43aa553d39	CREATED	DAILY_REPORT	76318e18-e3fe-4ee6-934f-619d9de69d1f	Relatório criado (Avulsos, 2026-08-24)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 21:41:13.906
343bf0e3-2a01-4b85-ae09-b4ae1a0bea60	CREATED	DAILY_REPORT	a8308c8a-9c6a-42b0-859f-3c2bad542a5d	Relatório criado (Anúncio, 2026-08-24)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 21:41:37.163
bb746065-a2bd-40c9-9dbc-9afe2a3ba3ac	CREATED	MATERIAL_REQUEST	4a7717cd-1d1c-4138-85e4-3fdd548dea15	Pedido de material criado (Jederson Luiz Batista)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 22:16:53.996
38e655cd-dd90-486e-b9d6-12d37e3f434f	UPDATED	MATERIAL_REQUEST	4a7717cd-1d1c-4138-85e4-3fdd548dea15	Pedido de material atualizado (Jederson Luiz Batista)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 22:17:05.646
3a80e56f-9777-479a-a32a-32b2e6f1998d	UPDATED	MATERIAL_REQUEST	4a7717cd-1d1c-4138-85e4-3fdd548dea15	Pedido de material atualizado (Jederson Luiz Batista)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 22:17:20.533
1aefadf4-354a-4611-b5e8-ee5e126ac647	CREATED	MATERIAL_REQUEST	a7d08726-24e6-42df-ba06-223fb6782d3e	Pedido de material criado (Rosemary)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 22:18:40.602
8a3390d8-a8da-405b-93a3-989e62fa8706	CREATED	MATERIAL_REQUEST	bec69cb4-dac0-43b6-8db1-1005c08dbcbb	Pedido de material criado (Catarina Rocha)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-24 22:30:05.771
7be0c027-748a-4543-a42d-7fc4b2ce9fcc	CREATED	MATERIAL_REQUEST	07244331-a8bf-4503-aad6-5194d13c9c53	Pedido de material criado (Oswaldo)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-25 15:52:35.963
86cc2b47-e2c7-4136-921d-107df633deab	CREATED	MATERIAL_REQUEST	b0f0b32a-bc7b-4663-949e-3343f40d6eb3	Pedido de material criado (Ana Lúcia)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-25 16:52:22.181
e66a0298-55fd-4b8f-8f73-44874a2424a6	UPDATED	MATERIAL_REQUEST	07244331-a8bf-4503-aad6-5194d13c9c53	Pedido de material atualizado (Oswaldo)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-25 17:49:10.612
18c5b360-7e04-4bd7-80e0-2bbaf87ea74a	CREATED	MATERIAL_REQUEST	4e6271ed-f19b-42d3-9e9b-66a4de00c83c	Pedido de material criado (Jailton)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-25 17:50:27.439
976c3f70-f1f9-4209-8bfd-8324276bde1b	CREATED	MATERIAL_REQUEST	df806600-e60a-4c3e-ae58-73ea99955746	Pedido de material criado (Angela dos Santos)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-25 19:51:36.209
0fbf1722-9aee-4b49-abd2-7829f05c35e2	CREATED	MATERIAL_REQUEST	323c1bca-aa09-4842-babf-3ae4b23763d9	Pedido de material criado (Azevedo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-25 19:56:56.717
990a738c-6677-483e-816c-9d3abe1bb379	CREATED	MATERIAL_REQUEST	a13c2de0-ce7e-49b3-9edd-a63cd3dfa78d	Pedido de material criado (Nilzete de Jesus)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-25 19:57:23.47
a758ff5c-6b19-4c1f-aaf8-47d70a197a6f	CREATED	MATERIAL_REQUEST	9e565e7e-c635-400a-9004-1711b572d69b	Pedido de material criado (Leo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-25 20:28:34.848
2300de8d-39b9-4f29-929f-6905bcc2c1af	CREATED	MATERIAL_REQUEST	37f640c2-4f7f-4c22-8d9c-f053ffd6ba5f	Pedido de material criado (Maria Aparecida)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-25 20:30:51.515
e7958e60-2cf2-4006-ad67-28a9312ab6ca	UPDATED	MATERIAL_REQUEST	5f5890ab-6db2-47bc-ad7c-2a50062f5147	Pedido de material atualizado (Luiz Gonzaga - Guadalupe)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:00:39.591
d8c9b0e1-bec2-4c48-9de2-16026580bd1b	CREATED	MATERIAL_REQUEST	22af291c-439b-4a22-88d3-b48985fcb5ac	Pedido de material criado (Roberto "Come Bife")	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:03:40.744
5e2bc5f8-c919-4152-b2e8-b91a296ca897	UPDATED	MATERIAL_REQUEST	22af291c-439b-4a22-88d3-b48985fcb5ac	Pedido de material atualizado (Roberto "Come Bife")	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:03:47.321
202ae7e7-96d8-4877-85fd-daa0c936b1b9	CREATED	MATERIAL_REQUEST	7e9672c3-b146-4493-8976-344383c83670	Pedido de material criado (Tigre)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:06:00.521
e6f47095-409b-4b0b-b200-28e73e925c91	UPDATED	MATERIAL_REQUEST	7e9672c3-b146-4493-8976-344383c83670	Pedido de material atualizado (Tigre)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:06:07.744
ec13151e-98c0-4710-b3c8-2dc74f2e7289	UPDATED	MATERIAL_REQUEST	07244331-a8bf-4503-aad6-5194d13c9c53	Pedido de material atualizado (Oswaldo)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:06:38.513
0de009f0-1c75-4514-b403-e70222a8a297	UPDATED	MATERIAL_REQUEST	df806600-e60a-4c3e-ae58-73ea99955746	Pedido de material atualizado (Angela dos Santos)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:06:56.13
0e399441-a61f-491e-b00b-1318f59fcaa4	UPDATED	MATERIAL_REQUEST	b0ec21d6-a793-44be-a3af-1aa80e162faa	Pedido de material atualizado (Francisco Carlos)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:07:08.764
a001efc2-1546-4ed8-9de4-c204e1dec06e	UPDATED	MATERIAL_REQUEST	4a7717cd-1d1c-4138-85e4-3fdd548dea15	Pedido de material atualizado (Jederson Luiz Batista)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-26 15:07:20.998
0cc7289c-f6bf-47db-b32f-fb5966d9ac1a	CREATED	MATERIAL_REQUEST	299a8989-1c7c-4729-9a40-e17f38bb17c8	Pedido de material criado (Rudnei Marinho)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-26 15:30:48.121
55f76abe-0328-45a7-89ac-d5b148bd2539	CREATED	MATERIAL_REQUEST	2dcc5485-add7-4023-a226-776f84f860ea	Pedido de material criado (Pedro Paulo)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-26 15:41:13.638
374266b7-b7c2-4006-a400-387c7c0ce950	CREATED	MATERIAL_REQUEST	38107f42-6692-4788-b2c5-dc7061b6fcb4	Pedido de material criado (Fernanda Montenegro)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-26 16:16:45.262
a74d7334-a603-4928-a298-44ac97f61514	CREATED	MATERIAL_REQUEST	7dbded90-dad7-42b6-a024-be297025add8	Pedido de material criado (Fabricia Maria)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-26 16:40:10.712
1f0e0a9d-d289-4bd7-b213-498e97fe9c72	CREATED	MATERIAL_REQUEST	7cd9de8e-76c0-43fd-a45c-9f9b148cb249	Pedido de material criado (Marcel)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-26 17:31:55.842
526e52da-553f-4b76-a5ec-fb5960cf3641	CREATED	MATERIAL_REQUEST	0cd2b1a2-11a2-4e64-ad68-d9a8313bce85	Pedido de material criado (Bruno Medeiros)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-26 17:33:31.373
d5a2efcf-1fc8-43d1-b219-07121d627092	CREATED	MATERIAL_REQUEST	48d192b1-7a6e-496a-bedb-fa472f2d80af	Pedido de material criado (Joaquim Souza)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-26 17:36:15.771
fddcc8e5-a25d-424b-9a8b-7f8155ac8212	CREATED	MATERIAL_REQUEST	19eeccb9-935f-47a9-8a87-62ff9a45d494	Pedido de material criado (José Cláudio)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-26 18:33:12.868
63720ede-1892-4ba6-98e0-d33c5d91b7d3	CREATED	MATERIAL_REQUEST	964687c7-cf71-4761-a7e2-8eed706cd4b3	Pedido de material criado (Monica)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-26 18:35:34.412
d3b255fa-624f-40d4-9268-ce1de584eac3	CREATED	DAILY_REPORT	6fe890c8-5142-403a-aa5e-bc97b0c726a4	Relatório criado (Avulsos, 2026-08-26)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-26 19:55:50.922
804598d9-f40d-462b-954a-2ad4fb645513	CREATED	MATERIAL_REQUEST	43413c55-00df-4551-92bf-3df7d2f7d4d8	Pedido de material criado (Alexandre)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-26 20:02:19.151
3184101f-9cbe-441c-acb6-573832c7851c	CREATED	MATERIAL_REQUEST	40ec6742-d586-425d-b378-eecca593cc61	Pedido de material criado (Patrícia Inês)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-26 23:03:54.583
67a2ecb3-6191-4380-84f8-ab32dcdf093b	UPDATED	MATERIAL_REQUEST	9e565e7e-c635-400a-9004-1711b572d69b	Pedido de material atualizado (Leo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-26 23:04:20.812
d63b386a-76bf-4167-8a38-027dccc5cecb	CREATED	MATERIAL_REQUEST	51890671-b4a2-4508-a2db-f297cb63fa34	Pedido de material criado (Sonia)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 17:27:01.063
16fe020a-854e-485b-988b-0273d2b6f5f7	CREATED	MATERIAL_REQUEST	0f61b7c3-bd7a-4bde-8eb5-c56d9a00dbc3	Pedido de material criado (João Lacurte)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-27 17:35:39.18
4e99bfa6-70d7-4b54-acaa-ae27b792188b	CREATED	MATERIAL_REQUEST	c1c18c82-901e-48dd-9aa1-21d29fcb08e4	Pedido de material criado (Arthur)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 17:48:41.724
86b0583c-8b96-4757-b6b7-6d4b2076fdc1	CREATED	MATERIAL_REQUEST	7b327c8e-e3a7-49e5-99c3-dc3b24140196	Pedido de material criado (Alessandro Lacerda)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-27 18:27:02.892
44db5ff4-b578-4cfe-a278-ed2895bfdd24	CREATED	MATERIAL_REQUEST	90454958-1683-42b9-9486-c1e456b28243	Pedido de material criado (Laís)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-27 19:03:44.597
e4f8b0a2-f6ef-4563-ac5b-0d0aba265bf5	CREATED	MATERIAL_REQUEST	c9036410-9ea9-4ea9-bc72-6697207a24f1	Pedido de material criado (Eduardo)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-27 19:53:30.644
63c662e5-9405-43e1-af3b-7565749ca697	CREATED	DAILY_REPORT	5bcec588-2fd3-4b97-b09c-64e760bc4e5e	Relatório criado (Avulsos, 2026-08-27)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-27 20:14:25.558
491a1d76-ec96-4f33-a22d-9db134502051	CREATED	MATERIAL_REQUEST	0acf43de-881b-4dfa-ad8d-348a86455b38	Pedido de material criado (Raimundo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 20:45:43.313
6c5d4f15-3b7e-46a1-b7ae-1ef5c4de608b	UPDATED	MATERIAL_REQUEST	0acf43de-881b-4dfa-ad8d-348a86455b38	Pedido de material atualizado (Raimundo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 21:23:13.446
6eb53e54-4897-4ad1-8227-e1a821445a4d	UPDATED	MATERIAL_REQUEST	37f640c2-4f7f-4c22-8d9c-f053ffd6ba5f	Pedido de material atualizado (Maria Aparecida)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 21:24:43.421
6a3e4fce-fed3-4d38-86c8-74aaec708a54	CREATED	MATERIAL_REQUEST	e5af7ebe-4e4d-4291-aaf5-3918c4e785ff	Pedido de material criado (Aurora)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 22:47:32.83
1e0e6572-5cfe-4868-b459-83a7cb0c4238	CREATED	MATERIAL_REQUEST	bb2803eb-a8ee-4b33-81f3-0fea75df7311	Pedido de material criado (Michele)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 22:49:59.197
b9d4f919-26f7-4527-9606-84ecfef947a2	CREATED	MATERIAL_REQUEST	dd679f83-e4d0-4b1c-a482-c95b4003cf60	Pedido de material criado (Jozinaldo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-27 23:15:06.608
e83df8a4-c5e8-4695-86ad-cc5c7cea5da8	UPDATED	DEMAND	e2608c02-e213-4067-a11a-ea78166e5326	Demanda atualizada (Poda de árvore — Rodrigo)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-28 16:12:27.369
8c70d2fd-d84d-4cf2-a194-5422982a8f3c	CREATED	MATERIAL_REQUEST	0d7f5d23-633e-4600-ae14-fc53a17a64c3	Pedido de material criado (Emilia Oliveira)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-28 17:31:26.539
d146bcf7-7e61-4c18-a71f-aa19aaf9b141	CREATED	MATERIAL_REQUEST	fa44dd36-033c-4207-aa80-8d3ca684b4b8	Pedido de material criado (Josivaldo)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-28 18:50:40.583
3cec2c6f-5670-4a65-b6ae-35df741562c1	CREATED	MATERIAL_REQUEST	f380170d-c8a0-4a30-a160-25e586506231	Pedido de material criado (Evandro Zé)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-28 18:53:06.243
0c7f78ee-ec3c-4096-b2d8-0ee4512ce7b7	CREATED	MATERIAL_REQUEST	d5343ffe-7c65-40e0-8c95-0f3fce1bd798	Pedido de material criado (McMarcelo Brigadeiro)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-28 19:19:56.782
c69104d3-aba9-4817-9a43-0924640f213c	CREATED	MATERIAL_REQUEST	40b6ba46-c15e-4bbe-9d91-2f0c8389dc77	Pedido de material criado (Lívia Martins)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-28 22:17:42.005
30c515da-b35f-4f27-b55a-ba1c68dc9540	CREATED	DAILY_REPORT	e1938c7f-dc3a-4f64-98a6-64fc7e45b561	Relatório criado (Avulsos, 2026-08-27)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 12:45:17.965
76a137f2-bb2f-431a-acbf-c3ee053b441f	DELETED	DAILY_REPORT	e1938c7f-dc3a-4f64-98a6-64fc7e45b561	Relatório excluído (Avulsos, 2026-08-27)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 12:47:36.651
fad0dcc9-90dd-4053-a236-abac4a231aeb	CREATED	DAILY_REPORT	e4dcd9f5-eb5b-4f1f-a7b4-580d8c3ab23d	Relatório criado (Avulsos, 2026-08-28)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-31 12:48:17.559
89860e9a-a219-4cb7-a0d4-31de48d04bcc	CREATED	MATERIAL_REQUEST	13fa9798-6e2b-42d6-8c76-47d201a64409	Pedido de material criado (Ester)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-31 13:23:26.629
c905a058-5566-4d07-b49c-5a30550a908c	CREATED	MATERIAL_REQUEST	867d6581-5ec6-4888-a8e5-373ec734e46b	Pedido de material criado (Edna Maria)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-31 13:33:38.533
0f43d98d-d819-44ba-9c9f-4d8f2185abd4	CREATED	MATERIAL_REQUEST	ad5ecfd4-e585-4207-97f7-5cf2926c3c8d	Pedido de material criado (Leninha)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 15:05:31.902
b7e3e14e-fd35-4c2e-956d-53007f20eaf6	UPDATED	MATERIAL_REQUEST	ad5ecfd4-e585-4207-97f7-5cf2926c3c8d	Pedido de material atualizado (Leninha)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 15:05:39.62
b1997ad1-d381-444d-92be-18bd315d56b0	UPDATED	MATERIAL_REQUEST	46bc6c48-c7db-4ea8-8370-660980befb40	Pedido de material atualizado (Drikka Ramos)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 15:07:05.271
2c5ade16-4772-410e-bed3-94a84b6d6b0c	UPDATED	MATERIAL_REQUEST	51793f21-a52d-4613-9650-8018141a8a37	Pedido de material atualizado (Marcos)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 15:07:27.47
47eeb53f-94a8-4ab1-87ad-1abd1f9234b6	UPDATED	MATERIAL_REQUEST	b221f997-f2f2-473f-812b-20b2edae63a8	Pedido de material atualizado (Daniel Lopes)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 15:07:39.615
7a0d09a9-d7ce-4c3b-8f2a-96ed67793823	UPDATED	MATERIAL_REQUEST	97f3cf60-8c55-49b2-8179-64f036e7f28f	Pedido de material atualizado (ALEXANDRE MENDES)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 16:23:43.159
13c16341-2ff1-4f51-91a5-0b5b274389f1	UPDATED	MATERIAL_REQUEST	f380170d-c8a0-4a30-a160-25e586506231	Pedido de material atualizado (Evandro Zé)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 16:24:01.506
21f9392c-8617-4481-a04f-cd9d22396f14	CREATED	MATERIAL_REQUEST	8859a627-39d9-4dd6-a50d-107639a033d5	Pedido de material criado (Lu)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 16:25:05.933
06ba493e-839b-47ae-b816-05685d1be3a6	UPDATED	MATERIAL_REQUEST	8859a627-39d9-4dd6-a50d-107639a033d5	Pedido de material atualizado (Lu)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 16:25:16.076
4a4c973b-276e-49ee-83b8-1cc10440586a	UPDATED	MATERIAL_REQUEST	0d7f5d23-633e-4600-ae14-fc53a17a64c3	Pedido de material atualizado (Emilia Oliveira)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 16:25:27.426
2aeb40ad-7eac-40b7-a294-a534e64c7762	CREATED	MATERIAL_REQUEST	c4d0ad6c-fc31-47cb-9f12-95b98f7ea2b1	Pedido de material criado (André Boudoux)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-31 16:55:48.006
e7815b89-3e87-484e-806c-50938b8dbe74	CREATED	MATERIAL_REQUEST	7335d448-bce4-4b6e-895e-42de9fec4dc3	Pedido de material criado (André Dias)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 17:15:52.92
e722ac7e-b80f-4742-9fa2-325f49ea23d3	CREATED	MATERIAL_REQUEST	ad5df636-78fe-4378-98f2-a3724cbed53d	Pedido de material criado (Marquinho)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-31 17:19:58.346
0ece08de-4744-46f9-815e-151fbd995413	CREATED	MATERIAL_REQUEST	028460d2-960d-4206-8889-91688503bd0f	Pedido de material criado (Luciano)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 17:28:02.473
16291cee-f2e1-455b-a40c-7f2b57f50f1a	CREATED	MATERIAL_REQUEST	c14b118c-d467-47db-a878-7a84e4665025	Pedido de material criado (Matheus Dias)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-31 17:29:29.534
0e72dbce-a0b6-4e90-ae3f-4aea815b19d5	UPDATED	MATERIAL_REQUEST	c14b118c-d467-47db-a878-7a84e4665025	Pedido de material atualizado (Matheus Dias)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-31 17:31:53.115
2aad1d4f-fd39-419d-b2e0-b3769c78610c	UPDATED	MATERIAL_REQUEST	40b6ba46-c15e-4bbe-9d91-2f0c8389dc77	Pedido de material atualizado (Lívia Martins)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 17:34:31.978
45ec4947-f758-4e0e-8ac9-a800fc6c6867	UPDATED	MATERIAL_REQUEST	40b6ba46-c15e-4bbe-9d91-2f0c8389dc77	Pedido de material atualizado (Lívia Martins)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-31 17:34:34.09
184a9991-4e70-4d90-acd2-11a6e591e7cd	CREATED	MATERIAL_REQUEST	63f07ce4-ad37-4aa9-8e35-f92bf380d8e7	Pedido de material criado (Suzane Teixeira)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 17:43:45.189
e9ca380c-7a2f-489a-be7e-90dd14f9acd5	CREATED	MATERIAL_REQUEST	6543dc23-a810-482c-810e-de914d3c8e3e	Pedido de material criado (Vera)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 17:45:49.648
46c0cee4-9cd3-49ed-94e5-c1a07fb33951	CREATED	MATERIAL_REQUEST	70831b07-a6b4-4b90-ae2e-3a9e2bb30a1d	Pedido de material criado (Arino Alves)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 18:14:47.589
dec7eef4-d184-4d26-a955-e7c1df16ecd1	CREATED	MATERIAL_REQUEST	b9196247-85ad-4cee-8fea-184a46957c1a	Pedido de material criado (Guilherme)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 18:17:13.387
16f1888e-3eb3-4e20-9de2-fbd4b1a8847d	CREATED	MATERIAL_REQUEST	bde7b534-3bbc-4ac8-98df-e049cab38686	Pedido de material criado (Leonardo Braz Moura)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-31 18:42:06.869
40a177cf-7b06-438e-9c78-bd09f9580546	CREATED	MATERIAL_REQUEST	5b4aacb1-86c1-4c15-8950-2a53fdd9e093	Pedido de material criado (João Romão)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 18:43:29.612
e9556386-959d-4679-ba8c-f16fee858846	UPDATED	MATERIAL_REQUEST	70831b07-a6b4-4b90-ae2e-3a9e2bb30a1d	Pedido de material atualizado (Arino Alves)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 18:50:40.198
5746fc90-2a9f-44f4-9a70-bc2d7ba145f4	CREATED	MATERIAL_REQUEST	56d43ea7-fa22-41c4-8b6a-7c2978b1ca44	Pedido de material criado (Nilson)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 19:08:14.927
4bd105a1-c8b6-4b41-aa91-533789878429	CREATED	MATERIAL_REQUEST	045ee993-ec4e-4af2-90cf-ff12a92f462d	Pedido de material criado (Gilberto Meres)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-31 19:18:20.325
492f19df-aed6-4795-8761-1bfea961a2e5	CREATED	MATERIAL_REQUEST	82858dbb-9573-4051-820d-3e30fdab330c	Pedido de material criado (Gilson)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 19:21:56.137
67419031-965e-45e5-8a14-0b0ae90300bc	CREATED	MATERIAL_REQUEST	c35fa0b8-8897-4ac9-beb5-9f4aa10da347	Pedido de material criado (Fernando Garrido)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-31 19:23:22.156
53b153d1-09b6-4341-bc97-fff103aca62b	UPDATED	MATERIAL_REQUEST	c35fa0b8-8897-4ac9-beb5-9f4aa10da347	Pedido de material atualizado (Fernando Garrido)	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-31 19:25:59.155
e402de83-b6f3-4135-878e-8cd3c69939c8	CREATED	MATERIAL_REQUEST	b7892716-8dbe-4f18-88dc-bdda4ca6261e	Pedido de material criado (Wellington)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-08-31 19:30:44.527
3b3eb54b-61d5-49d0-b772-51385e3bb787	CREATED	MATERIAL_REQUEST	8dc7a6a8-a1df-4b90-8138-614aa091ce85	Pedido de material criado (Beatriz)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-09-01 15:51:35.363
b71395ee-61a3-4cae-af85-8b5a2c72ab89	CREATED	MATERIAL_REQUEST	27651332-d95e-4e80-a461-cd16fdaa6757	Pedido de material criado (Margarida Motta)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-09-01 15:52:02.843
da4a03cd-1099-4db2-a55e-a622df52322b	UPDATED	MATERIAL_REQUEST	d372c5f8-d2df-4e53-a062-bc0a9ca2101b	Pedido de material atualizado (Adilson Moreira)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 16:11:48.546
685ad990-1c0a-4d5f-a0ce-827d19498930	CREATED	MATERIAL_REQUEST	00b55c89-b853-461f-9b4e-2c43b55e6f6c	Pedido de material criado (Marli Hortencio)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-09-01 17:16:52.466
de16d937-47f7-4d68-822a-e2fd3702a025	UPDATED	MATERIAL_REQUEST	00b55c89-b853-461f-9b4e-2c43b55e6f6c	Pedido de material atualizado (Marli Hortencio)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 17:17:25.493
ba510956-e46f-4f15-9766-5db575a8b50f	CREATED	MATERIAL_REQUEST	570844d8-f683-4134-a7ac-b581e3101e5d	Pedido de material criado (Mauriélen)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 18:51:17.539
a055a4c8-fa18-4edb-939e-be9d4a53c960	CREATED	MATERIAL_REQUEST	e036b024-7705-4a88-946f-1ace3113b381	Pedido de material criado (Robson)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 18:54:04.2
8833dcf5-3a4c-4fa4-9b97-2cc0cf25b4f3	CREATED	MATERIAL_REQUEST	4d46b1ce-2893-4845-a6e7-2571908322b6	Pedido de material criado (Renato)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 18:56:12.318
aa0e90c0-6056-4d2d-80b9-a80094c872f3	UPDATED	MATERIAL_REQUEST	90454958-1683-42b9-9486-c1e456b28243	Pedido de material atualizado (Laís)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:05:06.324
d8556cb8-63a1-4fab-a271-e8910ba1e5cf	UPDATED	MATERIAL_REQUEST	5f83e86b-1165-4481-9cbf-7b3e3c70a66e	Pedido de material atualizado (daniele)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:06:31.559
bf2e1350-7243-45f8-8956-2e7d10b520ed	UPDATED	MATERIAL_REQUEST	867d6581-5ec6-4888-a8e5-373ec734e46b	Pedido de material atualizado (Edna Maria)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:06:48.405
42c25591-110e-4584-bbf9-6c27bdac7aed	UPDATED	MATERIAL_REQUEST	2ef0c818-675d-4a1d-83a5-b08ad31dce41	Pedido de material atualizado (Luiz Antonio)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:07:12.083
2ac19727-820f-4a88-9602-8aaae4df827e	UPDATED	MATERIAL_REQUEST	e279f1a6-fb19-4656-9840-3644640896fd	Pedido de material atualizado (Jehro Gueiros)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:07:29.892
9f117936-2213-4623-8e3b-53945db74fce	UPDATED	MATERIAL_REQUEST	76ddca36-76ea-4aa9-b875-a58402099501	Pedido de material atualizado (Carlos Jr.)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:07:59.635
b73184b9-13c8-440b-abf5-3fa0874840e8	UPDATED	MATERIAL_REQUEST	9e565e7e-c635-400a-9004-1711b572d69b	Pedido de material atualizado (Leo)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:08:26.697
6fe31b50-2b86-473f-af4b-8b5b96781f0e	UPDATED	MATERIAL_REQUEST	d5f5dd36-61b7-4a5c-b22e-c9a6afbcf42e	Pedido de material atualizado (Ricardo)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-01 19:08:41.287
9d989b6b-b95a-4196-8ddf-120605e58fab	CREATED	MATERIAL_REQUEST	96d196ee-fb51-4620-9a65-9ea68a2432ac	Pedido de material criado (Coutinho)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 19:26:34.661
95658ce3-92ea-436d-9290-c3a94957a9d6	CREATED	MATERIAL_REQUEST	e6eb0994-2952-4992-9f57-5b3a2b731860	Pedido de material criado (Rose Parrot)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 20:18:31.167
2f122ea3-d2ea-43d4-87a4-96f5e171c785	CREATED	VOLUNTEER_REQUEST	6eb6ebe3-c3f7-44de-8f56-cea6202d3732	Pedido de trabalho criado (ELIANE SILVA NASCIMENTO)	\N	17852695-98dd-457e-8459-c409d223d417	2026-09-01 20:32:03.946
90614e41-259b-45e6-bbd4-0606421d1682	CREATED	MATERIAL_REQUEST	a50026e1-25aa-4452-811a-09a78d2499bc	Pedido de material criado (Evelyn)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 21:01:57.072
9aeb0c1a-f134-4a7f-a660-e6e62312c2c5	CREATED	MATERIAL_REQUEST	b2944436-3448-46b3-8feb-30b80a448493	Pedido de material criado (Luis Carlos)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 21:05:10.783
a63c5f16-3ca3-40ad-b4bf-69a2834479d9	CREATED	MATERIAL_REQUEST	d5213240-8e79-4739-986d-503349c371c2	Pedido de material criado (Paulo Roberto)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 22:11:05.377
cd47cd02-7b49-4b50-8610-cdad70fa84f2	CREATED	MATERIAL_REQUEST	fb1a8d6a-70d3-4923-a96b-7c0cbd2e392b	Pedido de material criado (Sergio)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 22:24:05.632
cb15f15a-1930-48de-b6cb-4d6d0c02cfb1	CREATED	MATERIAL_REQUEST	00694262-8a28-4587-9979-d01cb272cfa8	Pedido de material criado (Gabriel)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 22:53:44.718
066a4c17-7cd9-429e-b93c-b7d3d18475cc	CREATED	MATERIAL_REQUEST	53160c0b-d827-4881-bdf7-a8644f9c9da5	Pedido de material criado (Daisy)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 22:54:50.237
3c664564-fd18-4307-95c0-309455c9930a	CREATED	MATERIAL_REQUEST	c74cbaa1-8424-4f82-a668-fcfca2214701	Pedido de material criado (Ana)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-01 23:11:59.637
9a491617-c769-41c2-ab8d-ef5fd911911f	CREATED	MATERIAL_REQUEST	da3497f7-097a-438e-908f-fe88ddf3aa10	Pedido de material criado (Andre Luis)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-09-02 16:33:33.624
42361ff6-dce0-4049-bd26-9b86386d7c04	CREATED	MATERIAL_REQUEST	353af0c7-4c2e-4838-9906-2ee16ac3a032	Pedido de material criado (Mario Antonio)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-09-02 18:12:40.689
fa3d38d3-2032-40a7-819a-d3696da28a95	CREATED	MATERIAL_REQUEST	dd31f83e-1e25-49e6-a6db-cbfe848c0a3a	Pedido de material criado (Josefa)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 19:34:02.822
db949e0e-6af7-4eff-b3ce-ddbdabbbd582	CREATED	MATERIAL_REQUEST	48f1a9e6-dc90-4bc2-9505-c7c088a94f02	Pedido de material criado (Pedro)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 20:21:06.275
5a8e2aea-9621-40f2-8579-80e6b289959a	CREATED	MATERIAL_REQUEST	525c61e9-cc0e-4a68-aa21-73908e2c4e00	Pedido de material criado (Laura)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:44:06.183
ce017f2c-0156-495e-86f8-925f01c34de8	CREATED	MATERIAL_REQUEST	d8546220-fd3b-4cee-af1f-bb83edea097f	Pedido de material criado (Vera Muniz)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:45:36.037
8c931956-cfaa-4345-9676-b95c0d891132	CREATED	MATERIAL_REQUEST	c0c06461-0c41-4215-92d7-6e0e6c53e9f4	Pedido de material criado (Jose Luis)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:46:57.782
aeabc3e5-3d5e-4f7e-aa65-05baee7016b7	CREATED	MATERIAL_REQUEST	13629bda-0d43-4e58-a884-13747445a6ed	Pedido de material criado (Haroldo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:48:12.399
f642c532-1832-4fc7-9ae7-5ad49918f5a1	CREATED	MATERIAL_REQUEST	cc648bb2-3d7e-4e5b-a7eb-c482e4bd7cc3	Pedido de material criado (Dolfin)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:49:13.461
78277e27-ab8d-45a1-86cf-04eacfbfc3a4	CREATED	MATERIAL_REQUEST	5840f3a6-0c22-46bd-bc48-8064a0ebe10d	Pedido de material criado (Dora)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:50:20.747
6d4d6892-f3ef-4ac9-a9aa-858a694ee75a	CREATED	MATERIAL_REQUEST	1f24095d-c17a-49c2-a289-c5d8f359e2f9	Pedido de material criado (Alfredo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:51:38.827
5dcd2d32-8458-4cb8-99e7-3e6ceaa151cc	CREATED	MATERIAL_REQUEST	8152ebc6-6023-4c11-917e-870979b47274	Pedido de material criado (Eduardo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-02 22:53:11.677
292fa81c-0a22-4965-8b7a-3149ffb36d0a	CREATED	MATERIAL_REQUEST	30d21566-7d0b-4bd3-961a-16861897c8d1	Pedido de material criado (Suely Costa)	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-09-03 17:03:10.463
f3e95954-dbf3-480f-aee0-03349b7fc7f4	CREATED	MATERIAL_REQUEST	e127b669-bfb9-48b9-be1d-6409ce7f27ef	Pedido de material criado (Luiz Carlos)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-09-03 17:31:00.759
bab56ded-01d8-4b0b-b08b-bc6b13a81f94	CREATED	MATERIAL_REQUEST	b5efb47a-b0b6-46aa-b7eb-844d5fdc67e0	Pedido de material criado (Neide)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-03 18:16:21.808
e82e2512-9723-4403-98d9-1174670c3b6b	CREATED	MATERIAL_REQUEST	f67c659b-438a-4818-930c-041852dfae2e	Pedido de material criado (Latif)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-09-03 19:02:23.563
63c848a9-aee2-4ca7-b90a-a0bf9c576262	CREATED	DEMAND	4a33ae22-9cea-4adb-bbcf-eb7ba0eaecff	Demanda criada (Fiscalização de lava jato — Edna)	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-03 19:31:16.945
a3a36fca-fd91-4212-ae74-ed4ebce187c0	CREATED	MATERIAL_REQUEST	3290a747-166a-4512-a387-97637b98a0d6	Pedido de material criado (Gabriel)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-03 19:32:26.924
74e71369-88ec-438c-914a-e5b1ba23e4b9	CREATED	MATERIAL_REQUEST	3ae2393f-846b-415d-a478-b2efe20ed046	Pedido de material criado (Saimon Verlingue)	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-09-03 20:43:12.371
9ed4ebe3-7713-4293-aa94-631ecd27e255	CREATED	MATERIAL_REQUEST	26c5f4e7-7f11-4ba1-a505-d27fcc7b0a37	Pedido de material criado (Rogerio)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-03 20:52:28.056
f8b8c81e-fe2c-4a92-a6c2-5f8551ce4f8b	CREATED	MATERIAL_REQUEST	16894a60-1e26-456a-b833-840800dcda34	Pedido de material criado (Yuri)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-03 21:30:04.451
62042510-fe22-4bec-86fc-08e169ab3984	CREATED	MATERIAL_REQUEST	7ff423e9-c2db-4c22-8c26-23945e657a97	Pedido de material criado (Eliana)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-03 22:04:04.918
69a57966-a19c-41d6-9083-245a52ebc88e	CREATED	MATERIAL_REQUEST	033c8308-1726-4865-921f-cc86c5bbbb93	Pedido de material criado (Reginaldo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-03 22:55:23.017
219af607-d08d-4e5e-ac08-e0f2e0206cf7	CREATED	MATERIAL_REQUEST	59c16144-f0da-45da-8d8a-695cacf6e498	Pedido de material criado (Rodrigo)	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	2026-09-03 22:56:25.461
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
5bcec588-2fd3-4b97-b09c-64e760bc4e5e	2026-08-27	Avulsos	42	42	7	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-27 20:14:25.532	2026-08-27 20:14:25.532	Telefone 4
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
ed0f3978-3e50-41ab-a42b-3840c19d8a71	2026-08-19	Avulsos	34	34	12	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-19 19:03:11.86	2026-08-19 19:03:11.86	Telefone 4
b47d4f00-68bd-467a-81c0-09957c026108	2026-08-20	Avulso	39	25	25	0	0	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-20 21:17:42.353	2026-08-20 21:17:42.353	Telefone 4
16a13a66-03b1-43f7-911f-5b4f95e22d63	2026-08-21	Avulsos	31	31	12	0	0	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-08-21 19:59:27.801	2026-08-21 19:59:27.801	Telefone 4
2bed63e5-b7b6-46b8-a666-3d92acc414b9	2026-08-24	Avulso	42	30	0	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:16:39.795	2026-08-24 19:16:39.795	Telefone 4
3da93225-1aab-4e34-807c-e9fe71ef8c23	2026-08-21	Avulso	62	18	4	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-24 19:19:05.533	2026-08-24 19:19:49.973	Telefone 4
76318e18-e3fe-4ee6-934f-619d9de69d1f	2026-08-24	Avulsos	33	33	21	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 21:41:13.847	2026-08-24 21:41:13.847	Telefone 4
a8308c8a-9c6a-42b0-859f-3c2bad542a5d	2026-08-24	Anúncio	30	0	0	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-24 21:41:37.147	2026-08-24 21:41:37.147	Telefone 4
6fe890c8-5142-403a-aa5e-bc97b0c726a4	2026-08-26	Avulsos	33	33	9	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-26 19:55:50.886	2026-08-26 19:55:50.886	Telefone 4
e4dcd9f5-eb5b-4f1f-a7b4-580d8c3ab23d	2026-08-28	Avulsos	28	28	8	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-31 12:48:17.538	2026-08-31 12:48:17.538	Telefone 4
\.


--
-- Data for Name: demandas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."demandas" ("id", "fullName", "phone", "type", "tag", "neighborhood", "city", "fullAddress", "referencePoint", "description", "protocolNumber", "protocolDate", "responsibleAssessor", "status", "notes", "userId", "createdAt", "updatedAt") FROM stdin;
c64f5cf5-2bfd-400d-8c18-70998cd6c17e	Lucas Lugon	5521969630991	Cadastro de Currículo	Belford Roxo	Belford Roxo	Belford Roxo	Rua Teresinha Fernandes, 114	\N	Precisa cadastrar currículo	\N	\N	\N	REGISTERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 17:49:58.392	2026-08-14 17:49:58.392
e2608c02-e213-4067-a11a-ea78166e5326	Rodrigo	21979376057	Poda de árvore	Guararapes/Cosme Velho	Cosme Velho	Rio de Janeiro	Rua João De Lerry 178	Quadra Cerra	Coqueiro precisa ser removido	RIO-33055082-2	2026-08-10	Gustavo	RESOLVED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:42:44.513	2026-08-28 16:12:27.328
4a33ae22-9cea-4adb-bbcf-eb7ba0eaecff	Edna	5521964409593	Fiscalização de lava jato	Madureira	Vila Valqueire	Rio de Janeiro	Rua das cravinas 142	\N	Lava jato usando tintas com cheiro forte	\N	\N	\N	REGISTERED	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-03 19:31:16.911	2026-09-03 19:31:16.911
\.


--
-- Data for Name: demand_timeline_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."demand_timeline_events" ("id", "demandId", "eventType", "fromStatus", "toStatus", "note", "userId", "createdAt") FROM stdin;
4cdd6569-d0f3-43a3-9669-489dbba3222d	c64f5cf5-2bfd-400d-8c18-70998cd6c17e	CREATED	\N	REGISTERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-14 17:49:58.444
682424ef-c699-4013-9832-ba0dd92c7145	e2608c02-e213-4067-a11a-ea78166e5326	STATUS_CHANGED	IN_FOLLOW_UP	RESOLVED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-28 16:12:27.399
0f11840c-ebca-4bd5-94d0-9e422292ac1e	4a33ae22-9cea-4adb-bbcf-eb7ba0eaecff	CREATED	\N	REGISTERED	\N	908477be-b210-48f9-9c42-45690c4d220c	2026-09-03 19:31:16.966
\.


--
-- Data for Name: material_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."material_requests" ("id", "fullName", "phone", "tag", "neighborhood", "city", "fullAddress", "referencePoint", "materials", "materialOther", "quantity", "preferredDate", "preferredTime", "status", "notes", "userId", "assignedToId", "createdAt", "updatedAt") FROM stdin;
1077f799-3718-44d9-a5d2-63de14a17496	Janio Santos	5521986350829	Guaratiba	Guaratiba	Rio de Janeiro	Rua vila Gloria, S/N, LOTE- 11, QD-97, Jardim Maravilha	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	CEP.:23031-192	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 12:53:41.249	2026-08-18 12:53:41.249
7167a15a-3460-4242-b24f-46fc45cedd6e	Kissila Escalzo	5521982124968	Gávea	Gávea	Rio de Janeiro	Rua Ibrahim Sued 5	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	o prédio é Minhocao. 261\npode deixar com o porteiro no nome da Kissila 413	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:43:50.333	2026-08-21 18:04:07.892
8e88b89f-9520-4e64-aaf6-816cac24578a	Robson Miotti	5521996406007	Caxias	Caxias	Caxias	---	\N	{Adesivo}	\N	1	\N	Manhã	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-12 12:53:38.22	2026-08-17 12:26:18.288
b566d48d-f299-48fb-8504-8bacc77c9f6a	João Oliveira	5521981957647	Irajá	Colégio	Rio de Janeiro	Estrada do colégio, 101	Padaria oliveira	{Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 12:30:05.765	2026-08-17 12:30:33.123
15c49346-3015-4190-af55-7bcdc095d897	Márcio Domingos - Ilha	21976393358	Ilha	Ilha do Governador	R	Estrada do Galeão - 92	\N	{Adesivo,Panfleto,Banner}	\N	1	\N	\N	PENDING	Em casa depois de 17:30	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 13:55:17.082	2026-08-17 13:55:17.082
7af536d6-0782-4e05-8ac1-e809f08e5917	José Nascimento	21964349405	Ilha do Governador	Ilha do Governador	Rio de Janeiro	Estrada Maracajá 494 - Galeão	\N	{Adesivo,Panfleto,Banner}	\N	1	\N	Tarde	PENDING	Entregar para a irmã Terezinha.	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 14:45:56.94	2026-08-17 14:45:56.94
6c679ce5-dad0-4009-831d-ae5eff049142	Simões do Nascimento	5521976087398	São Cristóvão	São Cristóvão	Rio de Janeiro	Rua Major Fonseca 22 casa 2	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:11:54.183	2026-08-18 13:11:54.183
e279f1a6-fb19-4656-9840-3644640896fd	Jehro Gueiros	5521999005887	Freguesia JPA	Freguesia JPA	Rio de Janeiro	Rua Ana Cristina Cesar,155, bloco 02, AP. 409	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	CEP: 22763-145	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 12:22:31.717	2026-09-01 19:07:29.872
72594066-2e05-48a0-a30e-af650b0b05da	Marcelo	5521975956292	São João de Meriti	Éden	São João de Meriti	Rua Francisco Guimarães Neves, 299	Em frente a oficina do Alexandre, Portão de alumínio, Muro verde.	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:20:47.459	2026-08-17 15:20:47.459
d4276ee6-fe68-4922-b14f-fd3a6454f80e	Abisai Leite	21964413550	Campo Grande	Campo Grande	Rio de Janeiro	Estrada do Tingui 740, Fundos - Casa B	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-17 15:26:26.366	2026-08-17 15:26:26.366
aa697339-c791-4d7b-8c13-afaaf16d18d2	Rosimary Tostes	5521981394416	Inhaúma	Inhaúma	Rio de Janeiro	Rua Aitinga 75, 101	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:29:08.477	2026-08-17 15:29:08.477
1439951e-fa48-44e2-b3d1-e53d5ced16e4	Diniz da Silva	5521998364043	Ramos	Ramos	Rio de Janeiro	Rua Emílio Zaloar 67, AP 101 - Frente	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:36:44.222	2026-08-17 15:36:44.222
cc00cc33-f1e8-4d55-941a-db354ba71b6b	Carlos Rocha	5521995708155	Méier	Méier	Rio de Janeiro	Rua Pedro de Carvalho, 410 Casa 3 AP 202	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 18:28:33.73	2026-08-17 18:28:33.73
fad6b81c-bd9b-4054-9c71-44fd1ec5cf5a	Diego	5521982671982	Bangu	Bangu	Rio de Janeiro	Rua topázio 81 fundos	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:13:04.339	2026-08-18 13:13:04.339
a08d9bf1-1564-4da3-8b3b-1ef5e7f0fb5a	Beth Alves	5521974693437	Duque De Caxias	Nossa Senhora do Carmo	Duque de Caxias	Estrada do Calundu, 1000 - Residencial Pádua Bloco 1 AP 201	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 13:46:57.609	2026-08-18 13:46:57.609
975c7681-e348-4e9d-928c-636539179703	Luiz Fernando	21984333112	Centro	Centro	Rio de Janeiro	xxx	\N	{Panfleto,Adesivo}	\N	1	2026-08-19	Manhã	PENDING	Vem retirar	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 18:05:22.864	2026-08-18 18:05:22.864
1bf6053d-2d34-4448-a180-8a1371d431c4	Scooby/Felipe	5521992211487	Acari	Acari	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:09:17.354	2026-08-18 18:09:17.354
1d37ff53-68fe-4a36-8e0d-f1a20381bf81	Martha Santos	5521994449654	Copacabana	Copacabana	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	2026-08-24	\N	PENDING	Retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:07:56.437	2026-08-18 18:09:26.408
103aefb0-9246-41b6-bf0a-f47fed4ec6c8	Anderson Souza	5521966299856	Realengo	Realengo	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 18:33:09.368	2026-08-18 18:33:09.368
89fae1f2-b193-4195-9f42-a181763bc375	Monica	21967777646	Ilha do Governador	Ilha do Governador	Rio	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vai retirar com a liderança	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 19:32:33.177	2026-08-18 19:32:33.177
2316115c-6fc2-40b7-b98c-3e29b1401113	Carlos Elias	21965502896	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto,Bandeira}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 19:53:09.634	2026-08-18 19:53:09.634
d556fd15-bf68-40ae-93e2-61b3cb3bfec8	Catia dos Reis	21998898609	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vai retirar com a liderança	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 19:55:55.235	2026-08-18 19:55:55.235
a7f22999-8742-4062-a1b0-717e5d785417	Marcelo Fernandes	21987178676	Guadalupe	Guadalupe	Rio de Janeiro	Rua Nova Trento 305/101	\N	{Adesivo,Panfleto,Banner,Bandeira}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 20:13:19.321	2026-08-18 20:13:19.321
24b8a1e1-6e52-4925-a5d5-63e390747252	Tadeu	21994246624	Lapa	Lapa	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 20:35:09.886	2026-08-18 20:35:09.886
3e18f47d-9eca-4a67-8a99-6a1011f452bc	Gabriel Conte	5521992542478	Realengo	Realengo	Rio de Janeiro	Rua Jatinã 47 Sobrado	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-19 12:00:11.638	2026-08-19 12:00:11.638
92e003bc-d350-42da-8360-d332cf69ac5d	Sinval Aço	5521969145318	Caxias	Caxias	Caxias	Rua Carlos Chagas LT 37 quadra 145 jardim gramado DC	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-19 13:13:36.671	2026-08-19 13:13:36.671
249a3bba-12e4-42f8-98b5-08ce608554a9	Alessandra Figueira	21994545922	Radialista	Copacabana	Rio de Janeiro	Rua Pomoeu Loureiro - 64 casa 8	\N	{Adesivo,Panfleto}	\N	1	\N	Tarde	DELIVERED	Preferencialmente entre 15h e 18h durante a semana.	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-18 14:57:37.864	2026-08-21 17:59:50.743
24757c49-49e8-4dbb-9357-f6d1dfcede01	Cybelle Ribeiro (Vozinha)	5521996128623	São Salvador	Laranjeiras	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-14 18:43:40.015	2026-08-21 18:02:50.95
52a9bd62-ad90-4812-a926-2d16d2942eb1	Ricardo	5521995875475	Nova Iguaçu	Copacabana	Rio de Janeiro	Rua Siqueira Campos, 43 - 829	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:06:04.68	2026-08-21 18:04:35.209
51793f21-a52d-4613-9650-8018141a8a37	Marcos	5521979574286	Oswaldo Cruz	Oswaldo Cruz	Oswaldo Cruz	Rua Alberto de Carvalho 70	\N	{Adesivo,Panfleto,Bandeira}	\N	1	\N	Manhã	DELIVERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-14 13:31:40.889	2026-08-31 15:07:27.455
d5f5dd36-61b7-4a5c-b22e-c9a6afbcf42e	Ricardo	5521989351592	Freguesia JPA	Freguesia JPA	Rio de Janeiro	Rua Edgard Werneck 588 Casa 26	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-18 12:17:03.408	2026-09-01 19:08:41.271
3dc68a2c-106c-42ad-a3fc-b316f3288a23	Monica	21981940813	Santa Cruz	Santa Cruz	Rio de Janeiro	Av Brasil 62001 - Rua D Casa 09 - Parque tropical	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 15:21:19.438	2026-08-19 15:21:19.438
3b434b6d-8e84-4324-a5ff-ff7cb97ba47a	Verena	21979566817	Guaratiba	Guaratiba	Rio de Janeiro	Rua sessenta  e um Quadra 192 Lote 10 n° 15	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 16:07:38.458	2026-08-19 16:07:38.458
3da56982-e040-42e6-bf09-ee366520be5c	Elaine Cristina	21997816297	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Retirar com a liderança	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 16:23:35.154	2026-08-19 16:23:35.154
41797ded-6c42-4548-9d8e-01d83dce9c55	Zaira	21964509415	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Retirar com a liderança	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 16:24:49.035	2026-08-19 16:24:49.035
8efe0cf0-d054-4579-914e-fc69fae94023	Gilson Alves	21994643064	São João de Meriti	São João de Meriti	Rio de Janeiro	Rua Ingá S/N - lote 59 quadra 85 Coelho da Rocha	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 16:26:25.715	2026-08-19 16:26:25.715
27188b24-282a-4d6c-8c97-1110a6dc3ed2	Andressa Freitas	5521981988609	Vista Alegre	Vista Alegre	Rio de Janeiro	Rua Oliveira Melo 235	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-19 16:48:20.028	2026-08-19 16:48:20.028
6403d3dd-511a-4651-873c-c98f8c8c9e78	Adilson	21973512762	Duque De Caxias	Duque de Caxias	Rio de Janeiro	Rua Sargento Jorge Manoel 1046 - Jardim Centenário	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 18:05:40.982	2026-08-19 18:05:40.982
51315981-d5e3-4aa6-ba84-c364ceea76bd	Bebeto	21975457064	Paciência	Paciência	Rio de Janeiro	Avenida Cesário de Melo 10917	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 18:11:24.615	2026-08-19 18:11:24.615
96af6942-c987-4176-ab63-86b33e640b0f	Deuza Alves	21960213306	Bangu	Bangu	Rio de Janeiro	Rua Jacundá 351	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 18:25:57.425	2026-08-19 18:25:57.425
be7cd43c-1c07-463d-a2e2-2f6630117898	Fabrício	5521980465114	Tijuca	Tijuca	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	retirada no comitê	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-19 18:44:43.671	2026-08-19 18:44:43.671
85959375-8208-4264-b717-c5003c3a66b6	Kadu Portuga	21964383279	Bangu	Bangu	Rio de Janeiro	Estrada do Taquaral 44 - Lojas A e B	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Colocar em nome de Portuga	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 19:14:38.498	2026-08-19 19:14:38.498
e96a5f86-1416-46ee-93c4-010212124312	Wanderley	21999599117	Centro	Centro	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	vem retirar	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 20:03:41.471	2026-08-19 20:03:41.471
d176733b-06c7-4fd2-8dda-98ce1c81a3e6	Cristiano	21995318964	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 20:13:47.646	2026-08-19 20:13:47.646
8da56fed-d2b3-4920-a91b-43a0ba5f42bb	Pedro Veras	21965527092	Ilha do Governador	Ilha do Governador	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vai retirar na ilha	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 20:24:30.193	2026-08-19 20:24:48.271
b97c1410-15d8-4589-b720-de35b04203c1	Ricardo Silva	21964071913	Sepetiba	Sepetiba	Rio de Janeiro	Rua Silvio Abrantes 7	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-19 20:35:41.697	2026-08-19 20:35:41.697
73722744-781c-46ac-9caa-b1824de110ac	Luiz Eduardo	21977128850	Engenho de Dentro	Engenho de Dentro	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 14:13:23.147	2026-08-20 14:13:23.147
7fe4015f-e195-486b-88f4-012a689db726	Luciana Santos	5521981722471	Copacabana	Copacabana	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 15:20:17.636	2026-08-20 15:20:17.636
3a17a117-232f-4224-afa1-b627ab303827	Marcos Amorim	5521974524359	Estácio	Estácio	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 15:29:04.653	2026-08-20 15:29:04.653
70fdea7d-6393-4887-8160-d0d09cef6c2a	Alessandro Melo	2196451660	Insta	Campo Grande	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar na segunda	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 15:39:07.627	2026-08-20 15:39:07.627
1ff6191a-5c42-4f8f-bd44-1b287a28c775	Roni	21991941448	Encantado	Encatado	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar semana que vem	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 15:55:33.425	2026-08-20 15:55:33.425
eeb3ae7a-6629-46ba-98cb-5c6620db25ef	Luizinho	5521991318791	Cachambi	Cachambi	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	retirada no comitê	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 16:17:48.871	2026-08-20 16:17:48.871
057f2274-25db-4b8c-a760-07cc0c2437ac	André Santana	5521982883739	Itaguaí	Itaguaí	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	retirada de material	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 16:23:35.261	2026-08-20 16:23:35.261
50726352-7c6b-405e-9ea0-389701a0dc03	Araujo Joao Costa	5521990058133	Paciência	Paciência	Rio de Janeiro	Rua Paulinho da Ilha, 61	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Em frente a igreja missionária da paz Comunidade da nova Jersey	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-17 15:09:01.779	2026-08-20 16:47:04.345
d03eedc6-12af-4f57-a632-0475e0f5c2b1	Rodolfo de Souza	5521997391966	Brás de Pina	Brás de Pina	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	retirada de material	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 17:14:47.837	2026-08-20 17:14:47.837
bc37f379-90ec-46d0-b422-cb90abe548e5	Miriam	5521964319826	Paciência	Paciência	Rio de Janeiro	Rua Sizenando 145	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 17:29:52.859	2026-08-20 17:29:52.859
848af1d0-30d0-47c9-a025-c48a38dfc92c	Mauro	21997380505	Bom apoiador	Olaria	RJ	Rua Álvaro Antônio Sauka, s/n — Bloco 11, Quadra ST, Apto. 201	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 17:37:02.19	2026-08-20 18:08:23.567
7143f7ec-680b-446c-885c-07beddf7b60b	Cláudio Fernando	21982908853	Bom apoiador	Campo Grande	RJ	Rua Macedo Coimbra, 338 — Campo Grande, Rio de Janeiro/RJ — CEP 23052-130	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 17:58:03.666	2026-08-20 17:58:03.666
658e63f1-9802-48e4-8031-8a65a5e7aad9	Fábio	21974895805	Bom apoiador	Vila Belga / Dom Bosco (região de Marapicu)	Nova Iguaçu	Rua 6, nº 184 — Conjunto Vila Belga, Marapicu, Nova Iguaçu – RJ	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 17:42:50.032	2026-08-20 18:04:49.619
4e333133-26c2-44e3-a834-8aa35bf844a9	Arlei Coelho	21997873871	Bom apoiador	Campo Grande	RJ	Rua Rubem Faria Neves, Lote 20, Quadra 8 — Jardim Santa Cecília, Campo Grande, Rio de Janeiro/RJ — CEP 23095-530.	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 18:11:27.14	2026-08-20 18:11:27.14
3f5036ba-35bc-49b5-93f8-dba4f234377d	Luizinho Moura	21991351267	Bom apoiador	Santa Terezinha	Mesquita – RJ	Rua Barão de Quissamã, nº 136 — Santa Terezinha, Mesquita/RJ — CEP 26554-270.	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 18:13:57.577	2026-08-20 18:13:57.577
a0f2a9c9-c491-4b2b-b607-46f9adcb3ec4	Hugo Henrique	21976903125	Bom apoiador	Cachoeira Grande (Rio do Ouro)	Magé – RJ	Rua Paulo Salgado, nº 4 — Sítio	Rua do Bar do Botafogo	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 18:15:45.165	2026-08-20 18:15:45.165
c616c631-3963-469e-b25c-2dc6ac25ac0f	Hiago Felipe	21967120795	Bom apoiador	Bonsucesso	RJ	Rua Aguiar Moreira, nº 134 — Bonsucesso, Rio de Janeiro/RJ — CEP 21041-070.	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 18:25:06.95	2026-08-20 18:25:06.95
7df9064d-c00e-432a-bfbf-0c61abd7576e	Rafael Vila	21982049340	Vila Isabel	Vila Isabel	Rio de Janeiro	xxxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	2 kits	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 19:27:14.175	2026-08-20 19:27:14.175
79227a8d-476b-41cb-b40b-fb98c7857228	Adriana	21974204915	Bom apoiador	Santa Teresa	RJ	Rua Monte Alegre, nº 15/19 — Santa Teresa, Rio de Janeiro/RJ.	Esquina com a Rua do Riachuelo, próximo ao Motorista.	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 19:30:03.637	2026-08-20 19:30:03.637
5eba6e85-b9c2-4e93-b079-d582f9febeaa	Marcelo	21970174327	Bom apoiador	Taquara	RJ	Rua Macembu, nº 1.623 — Taquara, Rio de Janeiro/RJ.	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 19:31:51.718	2026-08-20 19:31:51.718
31e1a775-2f67-433c-91fb-af7039adb136	Eduardo	21970660131	Bom apoiador	Engenho da Rainha	RJ	Rua Valinhos, nº 135, Bloco 02, Apto. 404	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 19:33:18.871	2026-08-20 19:33:18.871
4d5762bb-5c10-4230-9f67-0e0403564756	Richard (Shalon)	5521966526564	Niterói	Icaraí	Niterói	Avenida Sete de Setembro 39	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 19:35:20.027	2026-08-20 19:35:20.027
ca995aaa-2a09-458c-a625-bc27d1a5df0e	Alexandre	21991770360	Bom apoiador	Campo Grande	RJ	Rua Itaúna, nº 101, Bloco 25, Apto. 104	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 19:36:07.46	2026-08-20 19:36:07.46
2584b3d0-aae2-4ff1-8ad1-5e191692855c	Tony	21997051858	Bom apoiador	Guaratiba	RJ	Caminho São Jorge, nº 101 — 3ª casa da rua.	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 19:38:36.972	2026-08-20 19:38:36.972
53e51135-0e99-4654-9a75-5e116632c22d	Alexandre	21972199347	Paciência	Paciência	Rio de Janeiro	Rua Seis quadra 16- lote 23	\N	{Adesivo,Panfleto,Outro}	\N	1	\N	\N	PENDING	Levar adesivo de carro	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 19:39:00.488	2026-08-20 19:39:00.488
54872030-02d9-46ef-8531-9f4b0cf33aa1	Leo Braga	21985116474	Bom apoiador	Chatuba	Mesquita	Rua Nossa Senhora do Monte Serrat, nº 144 — Chatuba, Mesquita/RJ — CEP 26587-680.	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 19:44:51.862	2026-08-20 19:44:51.862
df02ed42-d127-42a6-95d0-aa98cd59edc5	Márcio	5521966551257	Olaria	Olaria	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 19:54:56.095	2026-08-20 19:54:56.095
49ea0316-9623-48ce-a5f0-a5f136d24064	Tatiane	5521979841218	Nova Iguaçu	Nova Iguaçu	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 20:03:28.762	2026-08-20 20:03:28.762
6f13695c-3568-4f17-90ba-af050a349a62	Renata	21994461446	Manguinhos	Manguinhos	Rio de Janeiro	Rua Leopoldo Bulhões  n.800 quadra 5 casa 45 rua 5. Manguinhos	Em cima  do ferro velho do Batista	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 20:16:42.75	2026-08-20 20:16:42.75
3eada87b-c851-4ce4-a2cb-e1dc5fee8ed1	Valdir Xavier	21970325903	Baixada	São João de Meriti	Rio de Janeiro	Av Dr Délio guaraná 929	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 20:22:51.151	2026-08-20 20:22:51.151
a9fab8ad-e7d2-45e4-9206-8bcfc90c839d	Lalo ze amigo	21994740634	fogoro	Centro	Rio de Janeiro	leandro martins	rua acre	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	retirar no comite	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 20:42:17.864	2026-08-20 20:42:17.864
9a56b0cf-3207-4ded-9522-8c3a85884cd0	Felipe Aniversário Leonel	11913567835	Aniversário Leonel	Rocinha	RJ	Travessa Liberdade n9	Salão	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Tarde	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:43:01.168	2026-08-20 20:43:01.168
b3caddfd-9e59-4b47-ae37-773206c49713	rogerio	21988210553	Bom apoiador	bangu	senador camara	rua aurelio oliveira	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 20:46:17.027	2026-08-20 20:46:17.027
3272c91b-5495-4cdc-8f83-4f50863ffc7f	marcelo acari	11910617929	Bom apoiador	acari	Rio de Janeiro	raimundo veras 241	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 20:48:34.252	2026-08-20 20:48:34.252
8345dd96-47e6-4f97-bddf-9b2bf4ff5f1c	LUIZ JR.	21966327280	SOLTO	BENTO RIBEIRO	RJ	RUA ARAMÂ N37	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	SEM PREFERENCIA DE HORARIO	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:52:15.34	2026-08-20 20:52:15.34
d23baa68-800d-4704-889a-ec256c486095	ARTHUR SOUZA	21985092209	CENTRO	CATUMBI	RJ	PRAÇA JARDINEIRA N26 BLOCO 26 BLOCO 1 APT 401	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	NOITE	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:54:27.634	2026-08-20 20:54:27.634
701f9e68-254b-40e7-ad41-73782f6ec816	samuel	21995336071	Bom apoiador	penha	Rio de Janeiro	estrada jose rucas 834	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 20:54:38.294	2026-08-20 20:54:38.294
eda89e3b-8ddb-4fa6-982b-1eff684be5c1	ANDRE RIVAROLA	21964394459	CENSO BOTAFOGO	BENFICA	RJ	RUA MARECHAL AGUIAR N87 CASA 11 - CEP 20920280	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	SEM PREFERENCIA DE HORARIO	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:56:23.993	2026-08-20 20:56:23.993
923e3a54-4c8e-487e-b259-a28117ce0707	CARLOS HENRIQUE	21964448866	ZONA OESTE	CAMPO GRANDE	RJ	RUA GERALDO DE LA ROCQUE	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	SEM PREFERENCIA DE HORARIO	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:58:04.938	2026-08-20 20:58:04.938
816d5f3e-4cb1-43f1-9bc7-cca315bfd88b	priscila	21970851331	Bom apoiador	colegio	Rio de Janeiro	travessa dona julia	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 20:58:31.863	2026-08-20 20:58:31.863
0aa554df-84e6-4190-90c1-a21c2001df0e	DIEGO AMORIM	21964255182	ZONA OESTE	CAMPO GRANDE	RJ	RUA CLAUDE BERNARD N145 CASA 101 CEP 23045320	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	SEM PREFERENCIA DE HORARIO	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 21:00:14.402	2026-08-20 21:00:14.402
95110e9b-c5df-4d83-8f2d-2f220829d87e	edvania maria	21966822798	Bom apoiador	acari	Rio de Janeiro	rua bolonha 01	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	whatsapp em analise vou o contato.	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 20:51:48.195	2026-08-21 14:24:16.455
5e8b6357-b8d5-481e-899f-9be342184ece	MARIA DA CONCEIÇÃO	21965693463	cENSO FAVELA	COSME VELHO	RJ	LADEIRA DOS GARARAPES N 161	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	SEXTA FEIRA EM CASA O DIA TODO	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:50:14.335	2026-08-21 18:00:16.265
5c095c52-cec7-4a1c-ac63-a95ca0b2ea5d	Betania Oliveira	21993517246	Camelo	Copacabana/Pavão	Rj	Posto 5	Posto 5 próxima a comunidade	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Tarde ou noite	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:47:53.617	2026-08-21 18:01:43.258
923db942-a8ef-4f47-be43-0b88b7532c0f	Cris Mães BSC	21999936900	Bsc	Botafogo	Rj	Travessa Pepe n98 apt 201	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Sem preferência	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 20:44:52.37	2026-08-21 18:02:22.281
3261d48f-a963-4edc-996a-97b366145f44	Paulo César	21994966655	Vila Isabel	Vila Isabel	Rio de Janeiro	Torres Homem 283 bloco b 202	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 19:59:15.784	2026-08-21 18:03:08.38
b221f997-f2f2-473f-812b-20b2edae63a8	Daniel Lopes	21980946469	Cavalvanti	Cavalcanti	Rio de Janeiro	xxx	xxx	{Panfleto,Adesivo}	\N	1	\N	\N	DELIVERED	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-20 18:16:52.464	2026-08-31 15:07:39.597
d372c5f8-d2df-4e53-a062-bc0a9ca2101b	Adilson Moreira	21959023921	Bom apoiador	Maré (Comunidade Nova Holanda)	RJ	Rua das Maravilhas, nº 1 — Nova Holanda, Maré, Rio de Janeiro/RJ.	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 18:18:35.666	2026-09-01 16:11:48.512
88d482de-30b6-4eb3-a8c5-7b6b4ac011d1	DANIELE CARDOSO	22997752535	Aniversário Leonel	PQ SANTO AMARO	CAMPOS DOS GOYTACAZESQ	RUA DR. JOSE JORGE MUNIZ N18	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	SEM PREFERENCIA	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 21:04:48.512	2026-08-24 15:43:36.919
5f83e86b-1165-4481-9cbf-7b3e3c70a66e	daniele	00000000000000	Bom apoiador	vargem grande	Rio de Janeiro	rua serveente seis 380 casa 3a	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	consultar quando celular desbloquear	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 21:06:28.311	2026-09-01 19:06:31.543
76ddca36-76ea-4aa9-b875-a58402099501	Carlos Jr.	21996461194	Bom apoiador	eng velho	rj	estrada do engenho velho	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 21:00:45.999	2026-09-01 19:07:59.619
d3a6f040-cff8-4a7e-907e-b534a1f20800	Francisco	21965849531	Bom apoiador	Copacabana	Rio de Janeiro	Rua Tonelero, nº 44 — Copacabana, Rio de Janeiro/RJ — CEP 22030-002	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entregar na portaria	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 19:48:22.944	2026-08-21 12:55:19.128
a860bccc-b24a-41ff-b7c6-bf8bf5c0e5fa	Carlos Elias	21965502896	Ilha	Ilha do Governador	Rio de Janeiro	xxx	xxx	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vai retirar na sede PT Ilha	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-21 14:34:53.639	2026-08-21 14:34:53.639
fa75bb18-b6aa-4fcc-b846-204487226cf9	Neide Oliveira	5521983741628	Nova Iguaçu	Nova Iguaçu	Nova Iguaçu	---	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	retirada	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-21 15:23:20.219	2026-08-21 15:23:20.219
d9347846-b0a6-4f54-8414-0cf97fa72d80	Luciana Vilela	21970149022	Ramos	Ramos	Rio de Janeiro	Avenida dos Campeões 603 - bl 6 apto 301	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-21 15:48:45.813	2026-08-21 15:48:45.813
d241885d-c198-4f87-a8b4-089066698905	Diego (Saens Peña)	21968615431	Saens Peña	Saens Peña	Rio de Janeiro	Conde de B. Fim 338	\N	{Panfleto,Adesivo}	\N	1	\N	\N	DELIVERED	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-21 18:07:15.651	2026-08-21 18:07:22.155
0fe12ba1-8543-438b-8fae-5c09c73fb98c	Carlos	21970028906	Agostinho Porto	Agostinho Porto	Rio de Janeiro	Rua Prefeito Oswaldo Marcondes 366	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Somente panfletos	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-21 18:32:21.228	2026-08-21 18:32:21.228
77639ea3-9c6c-45f8-934e-4f544724440b	Sarah Soriano	5521989712679	Tijuca	Tijuca	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-21 19:08:31.549	2026-08-21 19:08:31.549
e19e1e10-1dfb-4844-a032-9b5451020a0f	Ildmar Couto - Barbudo	22998223311	Região dos Lagos	Iguaba Grande	Rio de Janeiro	Rua Capitão Jorge Soares, 239 Condomínio Solemar - casa 44	Em frente ao galpão do Madeirão - Barbudo	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-21 19:17:22.48	2026-08-21 19:32:51.132
2d9090ad-573a-4ae4-a72f-74114f26a6bd	Maria de Fatima	5521996083332	Realengo	Realengo	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-21 19:51:39.694	2026-08-21 19:51:39.694
3550fccc-4b98-49c9-844d-e1e1c25260f2	Genesio BASSON	5521966053901	Ilha do Governador	Ilha do Governador	Rio de Janeiro	Rua Stela Maris 163 Casa 2 Vila Juaniza - Galeão	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-21 19:58:19.171	2026-08-21 19:58:19.171
b22b5b2f-6869-40d8-813b-c3a744d11bed	CLAUDIA RODRIGUES	22974065831	Aniversário Leonel	PQ SANTO AMARO	CAMPOS DOS GOYTACAZESQ	RUA NUNES TAVARES N104	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	SEM PREFERENCIA	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 21:03:38.536	2026-08-24 15:43:14.773
10b3bb68-b0a4-4139-b439-29a9e0962d5d	Pablo Henrique	21981700531	Insta	Engenheiro Pedreira	Rio de Janeiro	Rua Boqueirão, 3	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-24 15:53:08.584	2026-08-24 15:53:08.584
7a145f91-1bb1-4660-84bd-1dbd5ef13a36	Rodrigo Nascimento de Carvalho	5522997399939	Penha	Penha	Rio de Janeiro	Avenida Dr Newton Guaraná 527 - Bloco 09 apto 302	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-24 16:49:20.795	2026-08-24 16:49:20.795
c6db4c9e-4404-402b-80e1-6c1dff080a2a	Rocha	5521992270012	Cachambi	Cachambi	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-24 17:11:25.481	2026-08-24 17:11:25.481
4abf08cd-7894-4e18-886b-342abc24ae4d	Tony	21997051858	Santíssimo	Santíssimo	Rio de Janeiro	Rua Caminho São Jorge 101 - 33° casa	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-24 17:57:45.359	2026-08-24 17:57:45.359
f9ce73ba-926a-45e4-b3e1-9c76b38dcf3c	Maria	22998842698	Campos dos Goytacazes	Ponta da Lama	Campos dos Goytacazes	Rua João Batista de Cavalo, nº 97 — Ponta da Lama, Campos dos Goytacazes	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-24 18:02:50.093	2026-08-24 18:02:50.093
bec69cb4-dac0-43b6-8db1-1005c08dbcbb	Catarina Rocha	21994267523	Insta	Santo Elias	Mesquita	Rua Juliana, 575	DETRAN	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-24 22:30:05.718	2026-08-24 22:30:05.718
1c02d8c8-171e-40eb-927e-7a52eeffeed9	Eduardo Matos	21986262059	Avulso	Rocinha	RJ	Travessa Mesopotâmia, nº 35 — Barbearia do Marcos Souza	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-24 18:38:50.253	2026-08-24 19:10:47.815
648a338f-d681-454a-880e-496d275f60aa	Maria Rosa	21959054791	Santa Teresa	Santa Teresa	Rio de Janeiro	Rua Paula Matos 148	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-24 19:13:31.977	2026-08-24 19:13:31.977
2ae9cc75-0997-4315-8450-3e75be6c37aa	Rafael Ferreira	21999594781	Nilópolis	Nilópolis	Nilópolis	Roldão Gonçalves 1661	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-24 19:22:14.99	2026-08-24 19:22:14.99
1d6abd96-5348-43d5-a70e-6faea19b23e5	Gonçalo Nunes	21982176295	Insta	Jacarepaguá	Rio de Janeiro	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-24 19:53:38.653	2026-08-24 19:53:38.653
0c3fa967-f330-4cef-9d0a-a2bfaaad0ec6	Eduardo Carpenter	21988689299	Insta	XXX	Niterói	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-24 20:54:18.731	2026-08-24 20:54:18.731
34f726a9-84b4-4a1a-82f2-d82ffad1aca4	Walter Francisco	21965503034	Insta	Bangu	Rio de Janeiro	Rua Caminho do Encanamento, 277	Próx. à Rua Fonseca (Shopping Bangu)	{Adesivo,Bandeira}	\N	1	\N	\N	PENDING	Entrega domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-24 21:13:22.221	2026-08-24 21:13:40.802
97f3cf60-8c55-49b2-8179-64f036e7f28f	ALEXANDRE MENDES	21999220874	ZONA OESTE	BANGU	RJ	RUA DOS LIMADORES N168	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	PAI DE ALEXANDRE BANGU - QUALQUER HORARIO	eaa6d959-a24c-4881-a882-061c4cd19902	\N	2026-08-20 21:01:47.854	2026-08-31 16:23:43.127
a7d08726-24e6-42df-ba06-223fb6782d3e	Rosemary	21981411735	Insta	Austin	Nova Iguaçu	Rua Aurora Monsantos, 47	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-24 22:18:40.586	2026-08-24 22:18:40.586
b0f0b32a-bc7b-4663-949e-3343f40d6eb3	Ana Lúcia	21976994163	Facebook	Araruama	Rio de Janeiro	Rua Cascatinha lote 16 quadra 14 - Iguabinha	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-25 16:52:22.138	2026-08-25 16:52:22.138
df806600-e60a-4c3e-ae58-73ea99955746	Angela dos Santos	21965121261	Insta	Engenheiro Leal	Rio de Janeiro	Rua Enaldo dos Santos Araujo 29	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-25 19:51:36.161	2026-08-26 15:06:56.113
4e6271ed-f19b-42d3-9e9b-66a4de00c83c	Jailton	21969346113	Bangu	Bangu	RJ	Avenida Brasil, nº 33.000, Bloco 14, Apto. 303	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-25 17:50:27.414	2026-08-25 17:50:27.414
07244331-a8bf-4503-aad6-5194d13c9c53	Oswaldo	21998223442	Penha	Penha	RJ	Rua Dionísio, nº 52	\N	{Bandeira}	\N	1	\N	\N	DELIVERED	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-25 15:52:35.93	2026-08-26 15:06:38.496
b0ec21d6-a793-44be-a3af-1aa80e162faa	Francisco Carlos	5521998462351	Deodoro	Deodoro	Rio de Janeiro	Travessa Antônio Firmino - Casa 27, Quadra 5 - Gleba C	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-21 19:01:33.853	2026-08-26 15:07:08.75
2ef0c818-675d-4a1d-83a5-b08ad31dce41	Luiz Antonio	21968922341	Recreio	Vargem Grande	Rio de Janeiro	Rua Eliete Costa Silva Jardim casa 6	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-24 16:21:06.473	2026-09-01 19:07:12.065
323c1bca-aa09-4842-babf-3ae4b23763d9	Azevedo	21988884385	Coelho Neto	Coelho Neto	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-25 19:56:56.695	2026-08-25 19:56:56.695
a13c2de0-ce7e-49b3-9edd-a63cd3dfa78d	Nilzete de Jesus	21970555427	Belford Roxo	Belford Roxo	Belford Roxo	RUA 28 DE SETEMBRO  N174	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-25 19:57:23.453	2026-08-25 19:57:23.453
5f5890ab-6db2-47bc-ad7c-2a50062f5147	Luiz Gonzaga - Guadalupe	5521969187214	Guadalupe	Guadalupe	Rio de Janeiro	Francisco bacuri 496	\N	{Adesivo,Panfleto}	\N	1	\N	Manhã	DELIVERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-24 16:44:31.749	2026-08-26 15:00:39.556
22af291c-439b-4a22-88d3-b48985fcb5ac	Roberto "Come Bife"	21972258757	Vicente de Carvalho	Vicente de Carvalho	Rio de Janeiro	Rua Maria Enfermeira 103	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-26 15:03:40.725	2026-08-26 15:03:47.307
7e9672c3-b146-4493-8976-344383c83670	Tigre	21998864647	Bento Ribeiro	Bento Ribeiro	Rio de Janeiro	Rua Cembira 161	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-26 15:06:00.498	2026-08-26 15:06:07.724
4a7717cd-1d1c-4138-85e4-3fdd548dea15	Jederson Luiz Batista	21979415574	Insta	Oswaldo Cruz	Rio de Janeiro	Rua Adelaide Badajós, 28	Portão laranja.  Na rua do espigão	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-24 22:16:53.956	2026-08-26 15:07:20.983
299a8989-1c7c-4729-9a40-e17f38bb17c8	Rudnei Marinho	21975845500	Cosmos	Cosmos	Rio de Janeiro	Rua Vilage Paçuaré 10	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-26 15:30:48.089	2026-08-26 15:30:48.089
2dcc5485-add7-4023-a226-776f84f860ea	Pedro Paulo	21993613246	SOLTO	Marechal Hermes	Rio de Janeiro	Rua João Vicente 1511	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-26 15:41:13.603	2026-08-26 15:41:13.603
38107f42-6692-4788-b2c5-dc7061b6fcb4	Fernanda Montenegro	21983400666	Insta	Recreio dos Bandeirantes	Rio de Janeiro	xxx	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-26 16:16:45.229	2026-08-26 16:16:45.229
7dbded90-dad7-42b6-a024-be297025add8	Fabricia Maria	21988217818	Insta	Figueira - Magé	Rio de Janeiro	Rua Doutor João Bruno 195	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-26 16:40:10.682	2026-08-26 16:40:10.682
7cd9de8e-76c0-43fd-a45c-9f9b148cb249	Marcel	21974751371	Insta	XXX	Nilópolis	XXX	XXX	{Adesivo,Panfleto,Bandeira}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-26 17:31:55.806	2026-08-26 17:31:55.806
0cd2b1a2-11a2-4e64-ad68-d9a8313bce85	Bruno Medeiros	21978590349	Insta	XXX	São Gonçalo	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Ven retirar	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-26 17:33:31.345	2026-08-26 17:33:31.345
48d192b1-7a6e-496a-bedb-fa472f2d80af	Joaquim Souza	5521959066759	Nova Iguaçu	Nova Iguaçu	Nova Iguaçu	Rua Otávio Tarquínio, 238 - loja 17	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-26 17:36:15.752	2026-08-26 17:36:15.752
19eeccb9-935f-47a9-8a87-62ff9a45d494	José Cláudio	21993995494	Insta	Mesquita	Rio de Janeiro	Rua Piaçava 344 - casa 1 Banco de Areia	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-26 18:33:12.824	2026-08-26 18:33:12.824
964687c7-cf71-4761-a7e2-8eed706cd4b3	Monica	21981940813	Insta	Santa Cruz	Rio de Janeiro	Av. Brasil, 62001. Rua D, casa 09	Parque Tropical	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio. \nVolta de São Paulo dia 05/09.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-26 18:35:34.392	2026-08-26 18:35:34.392
43413c55-00df-4551-92bf-3df7d2f7d4d8	Alexandre	21982608397	Insta	Guadalupe	Rio de Janeiro	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-26 20:02:19.053	2026-08-26 20:02:19.053
40ec6742-d586-425d-b378-eecca593cc61	Patrícia Inês	22997545312	Insta	Parque Leopoldina	Campos dos Goytacazes	Artur Emiliano Costa, 77	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-26 23:03:54.533	2026-08-26 23:03:54.533
51890671-b4a2-4508-a2db-f297cb63fa34	Sonia	21991956226	Lindbergh	Tijuca	Rio de Janeiro	Rua Engenheiro Enaldo Cravo, 35	Apt. 405	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-27 17:27:01.023	2026-08-27 17:27:01.023
0f61b7c3-bd7a-4bde-8eb5-c56d9a00dbc3	João Lacurte	21988945975	Insta	Campo Grande	Rio de Janeiro	Rua Armando Amaral Rebello 390	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-27 17:35:39.126	2026-08-27 17:35:39.126
c1c18c82-901e-48dd-9aa1-21d29fcb08e4	Arthur	21985092209	Insta	Catumbi	Rio de Janeiro	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-27 17:48:41.695	2026-08-27 17:48:41.695
7b327c8e-e3a7-49e5-99c3-dc3b24140196	Alessandro Lacerda	21968022119	Insta	Bangu	Rio de Janeiro	Rua do Farmacêutico 149	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-27 18:27:02.854	2026-08-27 18:27:02.854
c9036410-9ea9-4ea9-bc72-6697207a24f1	Eduardo	21983467450	Insta	Piabetá	Rio de Janeiro	Rua João Chaves 88	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-08-27 19:53:30.599	2026-08-27 19:53:30.599
0acf43de-881b-4dfa-ad8d-348a86455b38	Raimundo	21968173301	Lindbergh	Catete	Rio de Janeiro	Largo do Machado, 30	Adega Portugália	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega no local de trabalho.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-27 20:45:43.257	2026-08-27 21:23:13.405
37f640c2-4f7f-4c22-8d9c-f053ffd6ba5f	Maria Aparecida	21992259352	Lindbergh	Ponte das garças	Três Rios	Rua Feliciano Lima, 197	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-25 20:30:51.498	2026-08-27 21:24:43.403
e5af7ebe-4e4d-4291-aaf5-3918c4e785ff	Aurora	21981863403	Lindbergh	Paciência	Rio de Janeiro	Estrada do Campinho, 7005 - Bloco 1, Apt. 403	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio. Se não estiver, deixar com porteiro (dar detalhes sobre o destinatário).	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-27 22:47:32.782	2026-08-27 22:47:32.782
bb2803eb-a8ee-4b33-81f3-0fea75df7311	Michele	21991629290	Lindbergh	Senador Camará	Rio de Janeiro	Av. Santa Cruz, 7190 - Bloco 20, Apt. 204	Condomínio Destri	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-27 22:49:59.173	2026-08-27 22:49:59.173
dd679f83-e4d0-4b1c-a482-c95b4003cf60	Jozinaldo	21979608339	Insta	XXX	Rio de Janeiro	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-27 23:15:06.579	2026-08-27 23:15:06.579
fa44dd36-033c-4207-aa80-8d3ca684b4b8	Josivaldo	21979608339	-	Centro	Rio de Janeiro	Av. Erasmo Braga 255	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Portaria - Depois das 18h até as 22h - Um pouco de cada dobra - Iguinho	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-28 18:50:40.538	2026-08-28 18:50:40.538
d5343ffe-7c65-40e0-8c95-0f3fce1bd798	McMarcelo Brigadeiro	21971594929	Campo Grande	Campo Grande	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Retirada	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-28 19:19:56.741	2026-08-28 19:19:56.741
0d7f5d23-633e-4600-ae14-fc53a17a64c3	Emilia Oliveira	21993590180	Insta	Realengo	Rio de Janeiro	Rua Leonor Chrisman Mulle, 124	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-28 17:31:26.479	2026-08-31 16:25:27.409
90454958-1683-42b9-9486-c1e456b28243	Laís	21982346624	Jacarepaguá	Jacarepaguá — Colônia Juliano Moreira	RJ	Rua Nossa Senhora dos Remédios, Casa 31	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-27 19:03:44.554	2026-09-01 19:05:06.303
9e565e7e-c635-400a-9004-1711b572d69b	Leo	21992760123	Lindbergh	Barra Olímpica	Rio de Janeiro	Av. Salvador Allende, 4724	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-25 20:28:34.819	2026-09-01 19:08:26.682
13fa9798-6e2b-42d6-8c76-47d201a64409	Ester	21967626033	Lagoa	Lagoa	Rio de Janeiro	Borges de Medeiros, 3535 apto 106	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-31 13:23:26.59	2026-08-31 13:23:26.59
ad5ecfd4-e585-4207-97f7-5cf2926c3c8d	Leninha	21999810706	Vila Valqueire	Vila Valqueire	Rio de Janeiro	Rua Mata Grande	\N	{Panfleto,Adesivo}	\N	1	\N	\N	DELIVERED	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-31 15:05:31.872	2026-08-31 15:05:39.604
46bc6c48-c7db-4ea8-8370-660980befb40	Drikka Ramos	21993860125	Bom apoiador	Vila Valqueire	RJ	Rua Sibaúna, nº 125 — Vila Valqueire, Rio de Janeiro/RJ — CEP 21330-580	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Endereço alternativo: Rua Izidora, nº 10 — Vila Valqueire, Rio de Janeiro/RJ — CEP 21330-560.	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-20 17:41:19.607	2026-08-31 15:07:05.257
f380170d-c8a0-4a30-a160-25e586506231	Evandro Zé	21969811208	-	Realengo	Rio de Janeiro	Rua do Governo 676, Bloco C - AP 204	\N	{Panfleto,Adesivo}	\N	1	\N	\N	DELIVERED	Léo + Reimont	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-28 18:53:06.227	2026-08-31 16:24:01.489
8859a627-39d9-4dd6-a50d-107639a033d5	Lu	21974906318	Realengo	Realengo	Rio de Janeiro	Rua Aritiba 558	\N	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	908477be-b210-48f9-9c42-45690c4d220c	\N	2026-08-31 16:25:05.847	2026-08-31 16:25:16.06
c4d0ad6c-fc31-47cb-9f12-95b98f7ea2b1	André Boudoux	5521974376290	Centro	Centro	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-31 16:55:47.976	2026-08-31 16:55:47.976
7335d448-bce4-4b6e-895e-42de9fec4dc3	André Dias	21996330929	Insta	Laranjeiras	Rio de Janeiro	Rua das Laranjeiras, 227. Cob. 02	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio. Pouco material.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 17:15:52.881	2026-08-31 17:15:52.881
ad5df636-78fe-4378-98f2-a3724cbed53d	Marquinho	5521993619712	Praça Seca	Praça Seca	Rio de Janeiro	Rua Florianópolis 331 casa 34	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-31 17:19:58.31	2026-08-31 17:19:58.31
028460d2-960d-4206-8889-91688503bd0f	Luciano	21980980760	Insta	Anchieta	Rio de Janeiro	Av. Chrisóstomo Pimentel de Oliviera, 580. Casa 02.	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 17:28:02.424	2026-08-31 17:28:02.424
c14b118c-d467-47db-a878-7a84e4665025	Matheus Dias	22988333390	Duas Barras	Bom Jardim da Roça	Duas Barras – RJ	Povoado Bom Jardim da Roça	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Região Serrana - Sem número	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-31 17:29:29.517	2026-08-31 17:31:53.097
40b6ba46-c15e-4bbe-9d91-2f0c8389dc77	Lívia Martins	21995232451	Bangu	Senador Camará	Rio de Janeiro	Rua Coroados, 55 - Condomínio do Edifício Amazonas	Praça do Jabour	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-28 22:17:41.946	2026-08-31 17:34:34.074
63f07ce4-ad37-4aa9-8e35-f92bf380d8e7	Suzane Teixeira	21986504128	zone oeste	PILARES	RJ	Alameda Alberto Flores, bloco 15 - entrada E - apt 220	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 17:43:45.17	2026-08-31 17:43:45.17
6543dc23-a810-482c-810e-de914d3c8e3e	Vera	2196673420	Niteroi	FONSECA	NITEROI	Rua Dr. Renê de Souza Preste n 108 casa 3	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 17:45:49.621	2026-08-31 17:45:49.621
b9196247-85ad-4cee-8fea-184a46957c1a	Guilherme	21972968501	Insta	Padre Miguel	Rio de Janeiro	Rua Guaiaca, 495	Próximo ao Prezunic de Padre Miguel	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 18:17:13.368	2026-08-31 18:17:13.368
bde7b534-3bbc-4ac8-98df-e049cab38686	Leonardo Braz Moura	21966506460	São João de Meriti	Éden	São João de Meriti	Rua Maria Gama, 95	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-31 18:42:06.839	2026-08-31 18:42:06.839
5b4aacb1-86c1-4c15-8950-2a53fdd9e093	João Romão	21970031893	Insta	XXX	XXX	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 18:43:29.59	2026-08-31 18:43:29.59
70831b07-a6b4-4b90-ae2e-3a9e2bb30a1d	Arino Alves	21966104694	Insta	Sacramento	São Gonçalo	Rua Domício Porto Filho, número 38 (Lote 126, Casa 4)	Condomínio Villa Real	{Adesivo,Panfleto,Bandeira}	\N	1	\N	\N	PENDING	Entrega à domicílio. Entregar bandeira.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 18:14:47.549	2026-08-31 18:50:40.171
56d43ea7-fa22-41c4-8b6a-7c2978b1ca44	Nilson	21996945425	Insta	Ipanema	Rio de Janeiro	Rua Visconde de Piraja, 447 / 502.	XXX	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Entrega no trabalho.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 19:08:14.892	2026-08-31 19:08:14.892
045ee993-ec4e-4af2-90cf-ff12a92f462d	Gilberto Meres	21997089006	Vila Kosmos	Vila Kosmos	Rio de Janeiro	Rua Angai 115	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-31 19:18:20.296	2026-08-31 19:18:20.296
82858dbb-9573-4051-820d-3e30fdab330c	Gilson	21994944069	Insta	XXX	São Gonçalo	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 19:21:56.115	2026-08-31 19:21:56.115
c35fa0b8-8897-4ac9-beb5-9f4aa10da347	Fernando Garrido	21988138511	Duque De Caxias	Jardim Primavera	Duque de Caxias	Estrada do Rosário, 871 - Casa 3	\N	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	\N	2026-08-31 19:23:22.12	2026-08-31 19:25:59.132
b7892716-8dbe-4f18-88dc-bdda4ca6261e	Wellington	21966182773	Insta	Tijuca	Rio de Janeiro	Rua São Miguel, 400	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-08-31 19:30:44.506	2026-08-31 19:30:44.506
8dc7a6a8-a1df-4b90-8138-614aa091ce85	Beatriz	5521992439984	Jardim Botânico	Jardim Botânico	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-09-01 15:51:35.319	2026-09-01 15:51:35.319
27651332-d95e-4e80-a461-cd16fdaa6757	Margarida Motta	5521969547290	Bento Ribeiro	Bento Ribeiro	Rio de Janeiro	---	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-09-01 15:52:02.81	2026-09-01 15:52:02.81
00b55c89-b853-461f-9b4e-2c43b55e6f6c	Marli Hortencio	5521985011443	Madureira	Madureira	Rio de Janeiro	---	\N	{Panfleto,Adesivo}	\N	1	\N	\N	DELIVERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-09-01 17:16:52.44	2026-09-01 17:17:25.475
570844d8-f683-4134-a7ac-b581e3101e5d	Mauriélen	21981257583	Insta	Curva dos Fagundes	Rio de Janeiro	Rua Egídio Faria Leite, 04	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 18:51:17.503	2026-09-01 18:51:17.503
e036b024-7705-4a88-946f-1ace3113b381	Robson	21972749035	Insta	Cascadura	Rio de Janeiro	Rua Massiambu, 23	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 18:54:04.176	2026-09-01 18:54:04.176
4d46b1ce-2893-4845-a6e7-2571908322b6	Renato	21966080216	Insta	XXX	Nova Iguaçu	Rua Capitão Deodoro Alvarenga Ribeiro, Bloco 7. Entrada 13, Apt. 304	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 18:56:12.291	2026-09-01 18:56:12.291
867d6581-5ec6-4888-a8e5-373ec734e46b	Edna Maria	5521964409593	Vila Valqueire	Vila Valqueire	Rio de Janeiro	Rua das Cravinas 142b	Praça do Valqueire	{Adesivo,Panfleto}	\N	1	\N	\N	DELIVERED	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-31 13:33:38.498	2026-09-01 19:06:48.389
96d196ee-fb51-4620-9a65-9ea68a2432ac	Coutinho	21976133775	Insta	Bangu	Rio de Janeiro	Rua Mercês, 70	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 19:26:34.623	2026-09-01 19:26:34.623
e6eb0994-2952-4992-9f57-5b3a2b731860	Rose Parrot	21973554904	Insta	Ipiranga	Rio de Janeiro	Rua Piabanha, 99. Lote 23, quadra 22.	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 20:18:31.138	2026-09-01 20:18:31.138
a50026e1-25aa-4452-811a-09a78d2499bc	Evelyn	21988385311	Insta	Vila Vicosa	Belford Roxo	Rua Curupaiti, 12	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 21:01:57.045	2026-09-01 21:01:57.045
b2944436-3448-46b3-8feb-30b80a448493	Luis Carlos	21976480069	Insta	Senador Camará	Rio de Janeiro	Rua Bela Vista, 402. 2° Andar.	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 21:05:10.747	2026-09-01 21:05:10.747
d5213240-8e79-4739-986d-503349c371c2	Paulo Roberto	21973446350	Insta	Palmeiras	Pinheiral	Rua Sinesio de Oliveira, 102	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 22:11:05.344	2026-09-01 22:11:05.344
fb1a8d6a-70d3-4923-a96b-7c0cbd2e392b	Sergio	21993631051	Insta	Marambaia	Itaboraí	Rua F, lote 147. Quadra 13.	Próximo à fábrica de balas.	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 22:24:05.574	2026-09-01 22:24:05.574
00694262-8a28-4587-9979-d01cb272cfa8	Gabriel	21972336860	Insta	Rocinha	Rio de Janeiro	Estrada da Gávea, 259	Entrada da Rua 1 - Local de Trabalho	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 22:53:44.677	2026-09-01 22:53:44.677
53160c0b-d827-4881-bdf7-a8644f9c9da5	Daisy	21975404111	Insta	Rocha Miranda	Rio de Janeiro	Rua Curupira, 65	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 22:54:50.191	2026-09-01 22:54:50.191
c74cbaa1-8424-4f82-a668-fcfca2214701	Ana	21969782079	Insta	Jacaré	Rio de Janeiro	Rua Lino Teixeira, 246/102	XXX	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-01 23:11:59.599	2026-09-01 23:11:59.599
da3497f7-097a-438e-908f-fe88ddf3aa10	Andre Luis	21990839897	Insta	Vigário Geral	Rio de Janeiro	Rua texeira e Souza 39	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-09-02 16:33:33.585	2026-09-02 16:33:33.585
353af0c7-4c2e-4838-9906-2ee16ac3a032	Mario Antonio	5521997592061	Cachoeira de Macacu	Cachoeira de Macacu	Rio de Janeiro	Rua Reginaldo José da Silva n 178 - Ganguri	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Mandar Pouco	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-09-02 18:12:40.64	2026-09-02 18:12:40.64
dd31f83e-1e25-49e6-a6db-cbfe848c0a3a	Josefa	21979284168	Insta	Padre Miguel	Rio de Janeiro	Travessa Gilberto, 40	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 19:34:02.791	2026-09-02 19:34:02.791
48f1a9e6-dc90-4bc2-9505-c7c088a94f02	Pedro	21999745862	Insta	XXX	São Gonçalo	Av. Lúcio Tomáfera, 151 - Bloco 57, Apt. 204	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 20:21:06.221	2026-09-02 20:21:06.221
525c61e9-cc0e-4a68-aa21-73908e2c4e00	Laura	21987862965	Insta	Irajá	Rio de Janeiro	Rua Lopes Ferreira, 379	XXX	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:44:06.137	2026-09-02 22:44:06.137
d8546220-fd3b-4cee-af1f-bb83edea097f	Vera Muniz	22988488702	Insta	Unamar	Cabo Frio	Rua dos Macacos - Travessa Bom Jesus 24B	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:45:36	2026-09-02 22:45:36
c0c06461-0c41-4215-92d7-6e0e6c53e9f4	Jose Luis	21969664288	Insta	XXX	Cachoeira de Macacu	Rua Manoel Delphin Sarmento, 19	Em frente ao Itaú	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:46:57.768	2026-09-02 22:46:57.768
13629bda-0d43-4e58-a884-13747445a6ed	Haroldo	22999920381	Insta	Âncora	Rio das Ostras	Rua Peperônio, 626	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:48:12.383	2026-09-02 22:48:12.383
cc648bb2-3d7e-4e5b-a7eb-c482e4bd7cc3	Dolfin	21959580415	Insta	Botafogo	Nova Iguaçu	Rua Elvira Maria, 354	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:49:13.43	2026-09-02 22:49:13.43
5840f3a6-0c22-46bd-bc48-8064a0ebe10d	Dora	21983436063	Insta	Madureira	Rio de Janeiro	Rua Maria José, 196	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:50:20.731	2026-09-02 22:50:20.731
1f24095d-c17a-49c2-a289-c5d8f359e2f9	Alfredo	21975869429	Insta	São Cristóvão	Rio de Janeiro	Rua Bela, 1234	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:51:38.809	2026-09-02 22:51:38.809
8152ebc6-6023-4c11-917e-870979b47274	Eduardo	21989609304	Insta	Andaraí	Rio de Janeiro	Rua Pontes Correa, 167/502	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-02 22:53:11.652	2026-09-02 22:53:11.652
30d21566-7d0b-4bd3-961a-16861897c8d1	Suely Costa	5521983623006	Campo Grande	Campo Grande	Rio de Janeiro	R. Xique-Xique 175	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-09-03 17:03:10.427	2026-09-03 17:03:10.427
e127b669-bfb9-48b9-be1d-6409ce7f27ef	Luiz Carlos	21972852971	Facebook	Mangueirinha - Rio Bonito	Rio de Janeiro	Avenida Theonas Martins Gomes 280 apto 101	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-09-03 17:31:00.707	2026-09-03 17:31:00.707
b5efb47a-b0b6-46aa-b7eb-844d5fdc67e0	Neide	21980372196	Insta	Ipanema	Rio de Janeiro	Rua Barão da Torre, 168 - Apt. 204	XXX	{Adesivo,Panfleto}	\N	2	\N	\N	PENDING	Procurar Everaldo (porteiro);\nEntrega no local de trabalho.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-03 18:16:21.777	2026-09-03 18:16:21.777
f67c659b-438a-4818-930c-041852dfae2e	Latif	21987115787	Facebook	Realengo	Rio de Janeiro	Estrada General Canrobert Pereira da Costa 759 casa 12	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-09-03 19:02:23.537	2026-09-03 19:02:23.537
3290a747-166a-4512-a387-97637b98a0d6	Gabriel	21985431576	Insta	K11	Nova Iguaçu	Rua Capitão Edmundo Soares, 150 - Casa 02	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-03 19:32:26.903	2026-09-03 19:32:26.903
3ae2393f-846b-415d-a478-b2efe20ed046	Saimon Verlingue	21967834700	Insta	São Francisco Xavier	Rio de Janeiro	Rua Licinio Cardoso 515 bloco 2 apto 1205	\N	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	\N	2026-09-03 20:43:12.316	2026-09-03 20:43:12.316
26c5f4e7-7f11-4ba1-a505-d27fcc7b0a37	Rogerio	21975195858	Insta	Marechal Hermes	Rio de Janeiro	Rua Américo Rocha, 669 - C4	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-03 20:52:28.033	2026-09-03 20:52:28.033
16894a60-1e26-456a-b833-840800dcda34	Yuri	21964537934	Insta	XXX	Nilópolis	XXX	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Vem retirar.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-03 21:30:04.409	2026-09-03 21:30:04.409
7ff423e9-c2db-4c22-8c26-23945e657a97	Eliana	21966616061	Insta	Cosmos	Rio de Janeiro	Est. de Paciência - Rua Paz, 1129	XXX	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-03 22:04:04.869	2026-09-03 22:04:04.869
033c8308-1726-4865-921f-cc86c5bbbb93	Reginaldo	22988327236	Insta	XXX	Campos	Rua João Manoel de Faria, 88 - Bloco 9, Casa 11	Jóquei Clube	{Panfleto,Adesivo}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-03 22:55:22.958	2026-09-03 22:55:22.958
59c16144-f0da-45da-8d8a-695cacf6e498	Rodrigo	24998730828	Insta	Jaqueira	Piraí	Rua A, 83 - C1	XXX	{Adesivo,Panfleto}	\N	1	\N	\N	PENDING	Entrega à domicílio.	1814cb3a-5e52-4a39-bbb9-3c781f075d4f	\N	2026-09-03 22:56:25.441	2026-09-03 22:56:25.441
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
e724decc-1c16-4cfb-aee2-6ecb4df16e40	Gabriel Conte	5521992542478	Realengo	Realengo	Rio de Janeiro	{"Fim de semana"}	{Panfletagem,"Agenda de rua",Material,"Redes sociais"}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-19 12:00:52.38	2026-08-19 12:00:52.38
df8b9a31-67f5-4dcd-be26-6a64c5dcc347	Marcelo Ferreira dos Santos Junior	11910617929	Agenda	Acari	Rio de janeiro	{Manhã,Tarde,Noite}	{"Agenda de rua",Panfletagem,"Redes sociais",Material}	\N	PENDING_CONTACT	Disponibilidade total de horário	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-19 14:49:00.023	2026-08-19 14:49:00.023
70cccb75-950f-4ba3-b214-84841f918f9f	Beatriz carneiro da Rocha	21993632650	Cavalcante	Cavalcante	Rio de janeiro	{Tarde,Noite}	{Panfletagem,"Agenda de rua",Material}	\N	PENDING_CONTACT	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-19 15:25:16.84	2026-08-19 15:25:16.84
b1c7bf4b-e291-4765-a52e-8186e6001bbc	Julio Cesar Souza leite	21975283681	Bom apoiador	Nova Iguaçu	Nova Iguaçu	{Manhã,Tarde,Noite}	{Panfletagem,Outro}	Motorista	PENDING_CONTACT	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-19 15:31:10.042	2026-08-19 15:31:10.042
ed333c6f-38ac-45b3-b3b2-920689fc58d8	Isabella de Barros Muniz e Silva	9922332287	Insta	Rio comprido	Rio de janeiro	{Manhã,Tarde,Noite,"Fim de semana"}	{Outro}	Área administrativa	PENDING_CONTACT	Tem conhecimento amplo na área com experiência de atuação diversa.	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-19 15:34:39.602	2026-08-19 15:34:39.602
06fe5422-543a-43e0-8401-515b152f71eb	Fabrício	5521980465114	Tijuca	Tijuca	Rio de Janeiro	{Manhã,Tarde,Noite,"Fim de semana"}	{Material,"Redes sociais","Agenda de rua",Panfletagem}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-19 19:01:02.378	2026-08-19 19:01:02.378
e11f0934-d419-4b9f-a5f4-8de175cd64e5	Cayo Cesar de Jesus sales	21987376917	Bom apoiador	Niterói	Rio de janeiro	{Noite,Tarde,Manhã,"Fim de semana"}	{Outro}	Experiência com ADM e computação	PENDING_CONTACT	Vera jesus telefone 3	17852695-98dd-457e-8459-c409d223d417	\N	2026-08-20 15:28:10.169	2026-08-20 15:28:10.169
1353d4b7-f8d0-42aa-a177-afa6b1afa012	Andressa Freitas	5521982883739	Itaguaí	Itaguaí	Rio de Janeiro	{"Fim de semana",Noite,Tarde,Manhã}	{"Agenda de rua",Panfletagem,"Redes sociais",Material}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 16:25:27.481	2026-08-20 16:25:27.481
c0597986-a847-463e-a6e8-e11e5f72ad25	André Santana	5521982883739	Itaguaí	Itaguaí	Rio de Janeiro	{Manhã,Tarde,Noite,"Fim de semana"}	{Panfletagem,"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-20 16:38:25.96	2026-08-20 16:38:25.96
43622587-8152-4ee9-a1bd-88680aba77d9	Scooby/Felipe	5521992211487	Acari	Acari	Rio de Janeiro	{Manhã}	{Panfletagem,"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	\N	908477be-b210-48f9-9c42-45690c4d220c	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-21 14:01:10.312	2026-08-21 14:01:25.155
2ca78adb-f1c4-41c8-ba55-7713665ee428	Marcos	5521979574286	Oswaldo Cruz	Oswaldo Cruz	Rio de Janeiro	{"Fim de semana",Noite,Tarde,Manhã}	{Panfletagem,"Agenda de rua","Redes sociais",Material}	\N	PENDING_CONTACT	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	\N	2026-08-24 17:02:59.754	2026-08-24 17:02:59.754
6eb6ebe3-c3f7-44de-8f56-cea6202d3732	ELIANE SILVA NASCIMENTO	21993709009	Anúncio	NOVA IGUACU	nova iguaçu	{Tarde,Manhã,Noite,"Fim de semana"}	{Outro}	vigilante soldadora	PENDING_CONTACT	\N	17852695-98dd-457e-8459-c409d223d417	\N	2026-09-01 20:32:03.903	2026-09-01 20:32:03.903
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

-- \unrestrict d5mS8JWKbUejr0rucAiZqEEqnbRmcyYZ0PMgrlFi9hxMmwZgb0k9AfY0We6kPWc

RESET ALL;
