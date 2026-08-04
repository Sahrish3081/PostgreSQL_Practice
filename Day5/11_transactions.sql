-- ======================================
-- TRANSACTIONS
-- ======================================

BEGIN;

UPDATE accounts
SET balance = balance - 2000
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 2000
WHERE account_id = 2;

COMMIT;

--------------------------------------------------------

-- If any error occurs

ROLLBACK;