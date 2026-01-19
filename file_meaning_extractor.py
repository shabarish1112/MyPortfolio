from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def index():
    result = ""

    if request.method == "POST":
        filename = request.form["filename"]

        # Example: IMG_20240118_193012.jpg
        name_part = filename.split(".")[0]

        parts = name_part.split("_")

        if len(parts) >= 3:
            date = parts[1]
            time = parts[2]

            year = date[0:4]
            month = date[4:6]
            day = date[6:8]

            hour = time[0:2]
            minute = time[2:4]
            second = time[4:6]

            result = f"""
            📅 Date: {day}-{month}-{year}<br>
            ⏰ Time: {hour}:{minute}:{second}
            """
        else:
            result = "❌ Filename format not recognized"

    return render_template("index.html", result=result)

if __name__ == "__main__":
    app.run(debug=True)
