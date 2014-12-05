<h1>Code Book</h1>

<h2>Variables Used</h2>
<ul>
<li>subject - The participant ("subject") ID</li>
<li>activity - The label of the activity performed when the corresponding measurements were taken</li>
<li>x_test - The dataset loaded from x_test.txt file (test data)</li>
<li>y_test - The dataset loaded from y_test.txt file (test labels)</li>
<li>x_train - The dataset loaded from x_train.txt file (train data)</li>
<li>y_train - The dataset loaded from y_train.txt file (train labels)</li>
<li>subject_train - The dataset loaded from subject_train.txt file</li>
<li>subject_test - The dataset loaded from subject_test.txt file</li>
<li>features - The dataset loaded from features.txt file</li>
<li>activity - The dataset loaded from activity.txt file</li>
<li>meanStdIndices - Contains the indices of rows containing mean and standard deviation in features dataset</li>
<li>x_joined - Interim dataset combining x_test and x_train</li>
<li>y_joined - Interim dataset combining y_test and y_train</li>
<li>subject_joined - Interim dataset combining subject_test and subject_train</li>
<li>clean_data - Contains combined x_joined, y_joined and subject_joined</li>
<li>clean_data_melt - Contains data melted from wide format to long format</li>
<li>tidy_data - Contains the data set with the average of each variable for each activity and each subject</li>

