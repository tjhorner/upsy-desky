#!/bin/bash

rm -f ud_orders.csv ground_advantage_and_intl.csv priority.csv priority_express.csv pickup.csv

csvq -o ud_orders.csv "SELECT * FROM all_orders WHERE \`Model Number\` LIKE \"%UPSY%\";"

csvq -o ground_advantage_and_intl.csv "SELECT * FROM ud_orders WHERE \`Shipping Method\` LIKE \"%Ground Advantage%\" OR \`Shipping Method\` LIKE \"%Simple Export Rate%\" OR \`Shipping Method\` LIKE \"%First-Class Package International%\";"
csvq -o priority.csv "SELECT * FROM ud_orders WHERE \`Shipping Method\` LIKE \"%Priority Mail%\" AND \`Shipping Method\` NOT LIKE \"%Priority Mail Express%\";"
csvq -o priority_express.csv "SELECT * FROM ud_orders WHERE \`Shipping Method\` LIKE \"%Priority Mail Express%\";"
csvq -o pickup.csv "SELECT * FROM ud_orders WHERE \`Shipping Method\` LIKE \"%Pickup%\";"

SANITY_CHECK_QUERY=$(cat <<-END
  SELECT
    (SELECT count(*) from ud_orders)
      =
    (
      (SELECT count(*) from ground_advantage_and_intl) +
      (SELECT count(*) from priority) +
      (SELECT count(*) from priority_express) +
      (SELECT count(*) from pickup)
    )
  AS SanityCheck;
END
)

csvq "$SANITY_CHECK_QUERY"