SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict EdAMW0h56Fe4j3frTPbZoIyXyXzlcCxEIdD73QNU7IltM25psSTe3fhHWbSEOo8

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
\.


--
-- Data for Name: daily_reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."daily_reports" ("id", "date", "tag", "contacts", "replies", "supporters", "materialRequestsCount", "volunteerRequestsCount", "observations", "userId", "createdAt", "updatedAt") FROM stdin;
b4616526-9392-4246-af3d-8c1238aaec8c	2026-08-07	Nova Iguaçu	48	16	12	0	0	Convite para reunião de lideranças com Reimont	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-07 20:45:58.035	2026-08-07 20:45:58.035
bb8eaf62-2f90-4a14-b813-3c5f57d0088d	2026-08-10	Avulso	8	4	2	0	0	\N	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 12:11:30.48	2026-08-10 12:21:46.469
054b2ebd-ca8b-4143-bdf3-4fdf9478f6e8	2026-08-10	Camelô * Ambulante * Trabalhadores da Orla	10	3	1	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 15:22:04.284	2026-08-10 15:22:04.284
755a3d25-0fe2-4f47-9701-1dbbfff12730	2026-08-10	Avulso	29	22	5	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-10 16:38:27.93	2026-08-10 16:38:27.93
6e40606b-ec5a-48c5-8b4a-74d6c9b96a14	2026-08-10	Camelô * Ambulante * Trabalhadores da Orla	147	20	0	0	0	Envio do convite da audiencia publica na camara	0fdc3b09-573b-492e-ac19-0bccf7675328	2026-08-10 13:16:41.831	2026-08-11 11:34:37.315
2b8ee76d-eab0-4dea-8795-b91a742ba2c4	2026-08-11	Horto	3	1	1	0	0	Julio Cesar de cesar de nova Iguaçu \nEle tem pessoas que foram dispensadas da concessionária de água  pode ser um apoiado em potencial	17852695-98dd-457e-8459-c409d223d417	2026-08-11 12:59:19.129	2026-08-11 12:59:19.129
f98c670f-040f-4608-b334-fe26893141b6	2026-08-10	Avulso	5	5	3	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 14:15:03.666	2026-08-11 14:15:03.666
1e4158ec-8474-4236-b956-10880b4bc680	2026-08-10	Camelô * Ambulante * Trabalhadores da Orla	3	2	2	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 14:15:55.341	2026-08-11 14:16:38.046
1ff39e9a-a322-498d-a37c-658c55e80ecf	2026-08-08	Agenda Sta Rita	6	6	0	0	0	Contatos feito pelo Qr Code	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 17:35:16.883	2026-08-11 17:36:01.341
d85b926f-0f1d-43ae-808a-3d8b81e6d9e2	2026-08-07	Cavalvanti	30	13	0	0	0	Criação de grupo	51186511-dd29-4c57-9e06-dd2ee8cb6c2f	2026-08-11 17:47:17.904	2026-08-11 18:18:33.826
ba9d1e02-a4b3-4311-8fdf-cb80c19a265d	2026-08-11	Avulso	39	39	17	0	0	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 19:03:39.787	2026-08-11 19:04:58.506
5b53c710-602b-45e4-a775-adf3676b1d15	2026-08-11	Avulso	2	2	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:23:03.742	2026-08-11 21:23:03.742
64eabc3c-3409-4374-ad60-ba01d94027bc	2026-08-11	Lapa	5	4	2	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:21:37.164	2026-08-11 21:23:14.36
89616586-cd24-45a5-aa21-0f6830ae0ff3	2026-08-11	Penha	15	4	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:24:19.113	2026-08-11 21:24:19.113
3e76ef30-3057-4778-a044-353b5da81243	2026-08-11	Valqueire	5	2	0	0	0	\N	ef88882c-b914-42e4-9da1-29ba33bdafa4	2026-08-11 21:24:52.848	2026-08-11 21:24:52.848
f68f489a-5767-4454-ab65-7f5ffdf9bcac	2026-08-11	Censo Botafogo	50	15	7	0	0	\N	eaa6d959-a24c-4881-a882-061c4cd19902	2026-08-11 15:34:58.684	2026-08-11 23:00:02.646
\.


--
-- Data for Name: demandas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."demandas" ("id", "fullName", "phone", "type", "tag", "neighborhood", "city", "fullAddress", "referencePoint", "description", "protocolNumber", "protocolDate", "responsibleAssessor", "status", "notes", "userId", "createdAt", "updatedAt") FROM stdin;
e2608c02-e213-4067-a11a-ea78166e5326	Rodrigo	21979376057	Poda de árvore	Guararapes/Cosme Velho	Cosme Velho	Rio de Janeiro	Rua João De Lerry 178	Quadra Cerra	Coqueiro precisa ser removido	RIO-33055082-2	2026-08-10	Gustavo	IN_FOLLOW_UP	\N	3cb18ea4-04f1-42d2-a0ad-9ec0264a848e	2026-08-11 14:42:44.513	2026-08-11 15:00:34.702
\.


--
-- Data for Name: demand_timeline_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."demand_timeline_events" ("id", "demandId", "eventType", "fromStatus", "toStatus", "note", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: material_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."material_requests" ("id", "fullName", "phone", "tag", "neighborhood", "city", "fullAddress", "referencePoint", "materials", "materialOther", "quantity", "preferredDate", "preferredTime", "status", "notes", "userId", "assignedToId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "description", "updatedBy", "updatedAt") FROM stdin;
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

-- \unrestrict EdAMW0h56Fe4j3frTPbZoIyXyXzlcCxEIdD73QNU7IltM25psSTe3fhHWbSEOo8

RESET ALL;
