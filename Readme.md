<h1>Getting and Cleaning Data</h1>

<h2>run_analysis.R</h2>
<p>The run_analysis.R script does the following:
<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement. </li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names. </li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol>

<h2>Procedure</h2>
<ol>
<li>Loads the dataset into R</li>
<li>Merges the respective 'x_', 'y_' and 'subject_' files to form imterim datasets</li>
<li>Extract the rows with mean and standard deviation from features dataset and put it in a list
  <li>Remove the brackets '()' & '-' from the generated list</li>
</li>
<li>Subset y_joined interim dataset with the list created in last step</li>
<li>Load the activities and activity label datasets</li>
<li>Replace the activity id's with respective labels</li>
<li>Create the clean_data dataset by merging all the interim datasets</li>
<li>Load the reshape2 package. Using melt and dcast create the tidy dataset</li>
<li>Export the tidy_data dataset</li>
</ol>
