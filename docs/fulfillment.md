# Order Fulfillment Process

I wrote this out in order to help my future self if I ever go on hiatus or something. But it could be useful if you're starting to sell a similar product and are wondering what the process is like.

## Batch Order & Packing Slips

When ready to start fulfilling orders, export the unshipped orders from Tindie and generate packing slips to print using [this tool](https://github.com/tjhorner/tindie-packing-slip-generator).

## Shipping Labels

Upload the order CSV from Tindie to Pirate Ship to generate the shipping labels. If needed, make sure to split the CSV based on shipping speed (first class, priority, etc).

Print the shipping labels for the batch on a 4x6 label printer.

## Provision & QA Boards

Grab the amount of boards needed for the order, and send each of them through the QA process, which is semi-automated.

Flash the test target firmware to each board, and plug it in via RJ45 to a test host board. Plug a USB-C cable into the host board and watch for six flashes of the host's LED. If it flashes 6 times, the test is complete and QA is passed. Place a QA sticker on the back.

## Assemble Enclosure

If the customer opted for one, put the boards in enclosures and screw them in place.

## Flash Firmware

Flash the stock firmware on each of the boards using [this tool](https://shop.horner.tj/things/upsy-desky/setup/stock), via USB-C.

## Pack & Ship

Place shipping label for the order on the box. Fold the shipping label, place in the box. Put the items in bubble wrap, and place in the box. Seal the box, and ship it off. Repeat until done with batch.