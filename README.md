# Label Generation Utility for Free Ride

Utility for generating bike number labels. 

After labels are printed, they are confirmed to ensure those numbers are not generated again for the next printing. 

## Usage

Run the utility from the comand line:

    bundle exec script/app

## Basic workflow

* Verify that the highest number confirmed is reasonable

Command:

    bundle exec script/app current_max_number

* Generate a PDF of the next pages of labels
    * For 10 pages the command is:

Command:

    bundle exec script/app gen_pages 10


* Print the PDF on label stock
    * Use manual feed for the label stock
    * Troubleshoot any printing problems
        * Re-print specific pages from the PDF if necessary

* Confirm the highest number that was printed
    * Update the database to keep track
    * For example, if the max number printed was 1529:

Command:

    bundle exec script/app confirm_max_used 1529


* Delete the PDF after printing is confirmed
    * Once a label has been printed for a number, that label should never be printed again

