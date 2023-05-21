#!/bin/bash

rm -f first_class_and_intl.csv priority.csv priority_express.csv pickup.csv

csvq -o first_class_and_intl.csv "SELECT * FROM all_orders WHERE \`Shipping Method\` LIKE \"%First-Class%\" OR \`Shipping Method\` LIKE \"%Simple Export Rate%\";"
csvq -o priority.csv "SELECT * FROM all_orders WHERE \`Shipping Method\` LIKE \"%Priority Mail%\" AND \`Shipping Method\` NOT LIKE \"%Priority Mail Express%\";"
csvq -o priority_express.csv "SELECT * FROM all_orders WHERE \`Shipping Method\` LIKE \"%Priority Mail Express%\";"
csvq -o pickup.csv "SELECT * FROM all_orders WHERE \`Shipping Method\` LIKE \"%Pickup%\";"

SANITY_CHECK_QUERY=$(cat <<-END
  SELECT
    (SELECT count(*) from all_orders)
      =
    (
      (SELECT count(*) from first_class_and_intl) +
      (SELECT count(*) from priority) +
      (SELECT count(*) from priority_express) +
      (SELECT count(*) from pickup)
    )
  AS SanityCheck;
END
)

csvq "$SANITY_CHECK_QUERY"