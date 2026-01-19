print("Bunkmate started successfully!")

limit = float(input("Enter minimum attendance limit (%): "))
subjects = int(input("Enter number of subjects: "))

total_classes_all = 0
total_attended_all = 0

for i in range(1, subjects + 1):
    print(f"\nSubject {i}")
    total_classes = int(input("Total classes: "))
    attended_classes = int(input("Classes attended: "))

    percentage = (attended_classes / total_classes) * 100

    if percentage >= limit:
        flag = "🟢 Green Flag"
    else:
        flag = "🔴 Red Flag"

    print(f"Attendance: {percentage:.2f}% → {flag}")

    total_classes_all += total_classes
    total_attended_all += attended_classes

overall_percentage = (total_attended_all / total_classes_all) * 100

print("\n--- Overall Attendance ---")
print(f"Overall Attendance: {overall_percentage:.2f}%")
