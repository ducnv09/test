   M S B A M L   `   `   `  ����>  :pt9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:pt9pt9  5   	       pt9.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:pt9     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
MainWindow��5	   	   $	��600��6   $	��800��6)   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��60 �6   �� 5      $��* �6   .+�5   
   � $��0��6    � Orientation$ Vertical=�5      
����ح�$��	0,0,372,0q�5      .+�5      �� $��Employee Informtion��6   $��20(�5      $
��Bold"�5      
���  ��5      �� 5      $��Employee Id��6   �� 5      -   5         ��Name$ txtEmployeeId��5       �� 
IsReadOnly$
 True��5      $��25��5      ��5      ��  �� Path$ Id� �� Mode$ OneWay=� � DataContext 5      �� 	 �� ElementName$	 
lvEmployee��$ SelectedItem��� 5      $��Employee Name��6   �� 5      -   5        $ txtEmployeeName��5      $��25��5       ��5!      �� $
 Name� 5"      �� $	 
lvEmployee��$ SelectedItem��� 5#      $��Gender��6   �� 5$      
 �� Orientation$
 
Horizontal=�6   .+�5%      	� $
��Male��6    d� 	IsChecked$
 TrueY�5&       	� 	GroupName$ GenderGroup��5'      $��0,0,6,0q�66   	� 5(      $��Female��6   $ GenderGroup��5)      5*      �� 5+      $��Date of birth��6   (  "System.Windows.Controls.DatePicker  5,      -   5          Name$ txtEmployeeDob��5,      $��25��5-         SelectedDate 5.      �� $	 Dob� 5/      �� $	 
lvEmployee��$ SelectedItem��� 50      $��Phone��6   �� 51      -   5        $ txtEmployeePhone��51      $��25��52      $	��406��54   X   ��53      �� $ Phone� 54      �� $	 
lvEmployee��$ SelectedItem�6X   �� 55      $��IDNumber��6   �� 56      -   5        $ txtEmployeeIDNumber��56      $��25��57      ��58      �� $ Idnumber� 59      �� $	 
lvEmployee��$ SelectedItem�5:      �� 5;   
   $��1��6   $
 
Horizontal=�6"   $��	0,0,372,0q�5<      $��Center=�5=      .+�5>      �� -   5        $��Refresh��5>      $��10,15,10,15q�5@      $��80��6*   �� 5A      -   5        $	��Add��5A      $��10,15,10,15q�5C      $��80��6*   �� 5D      -   5        $
��Edit��5D      $��10,15,10,15q�5F      $��80��6*   �� 5G      -	   5        $��Delete��5G      $��10,15,10,15q�5I      $��80��6*   5J      �� 5K   
   -
   5        $��
lvEmployee��5K       $��2��6    �� View 5L      �� 5M      .P�5N      ��  �� Width$ 80��6%   $��Employee ID��5O   %    �� DisplayMemberBinding 5P   %   �� $ Id��� 5Q      $	 110��6%   $��Employee Name��5R   %    5S   %   �� $
 Name��� 5T      $	 100��6%   $��Gender��5U   %    5V   %   �� $ Gender��� 5W      $	 100��6%   $��DateOfBirth��5X   %    5Y   %   �� $	 Dob��� 5Z      $	 200��6%   $��Phone��5[   %    5\   %   �� $ Phone��� 5]      $	 200��6%   $��IDNumber��5^   %    5_   %   �� $ Idnumber�5`      5b      5c      5d      