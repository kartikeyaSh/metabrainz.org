BEGIN;

ALTER TABLE tier ADD CONSTRAINT tier_pkey PRIMARY KEY (id);
ALTER TABLE "user" ADD CONSTRAINT user_pkey PRIMARY KEY (id);
ALTER TABLE token ADD CONSTRAINT token_pkey PRIMARY KEY (value);
ALTER TABLE token_log ADD CONSTRAINT token_log_pkey PRIMARY KEY (token_value, "timestamp", action);
ALTER TABLE access_log ADD CONSTRAINT access_log_pkey PRIMARY KEY (token, "timestamp");
ALTER TABLE payment ADD CONSTRAINT payment_pkey PRIMARY KEY (id);
ALTER TABLE oauth_client ADD CONSTRAINT oauth_client_pkey PRIMARY KEY (client_id);
ALTER TABLE oauth_grant ADD CONSTRAINT oauth_grant_pkey PRIMARY KEY (id);
ALTER TABLE oauth_token ADD CONSTRAINT oauth_token_pkey PRIMARY KEY (id);

COMMIT;
