// Typing Effect for Header
const taglineElement = document.querySelector('header p');
const originalText = taglineElement.textContent;
taglineElement.textContent = ''; // Clear initial text
taglineElement.classList.add('typing-text');

let charIndex = 0;
function typeWriter() {
    if (charIndex < originalText.length) {
        taglineElement.textContent += originalText.charAt(charIndex);
        charIndex++;
        setTimeout(typeWriter, 50); // Typing speed
    } else {
        // Tagline finished typing
        taglineElement.classList.remove('typing-text'); // Remove cursor
    }
}

// Start typing effect after initial load
window.onload = () => {
    setTimeout(typeWriter, 500);
};


// Scroll Animation
const sections = document.querySelectorAll('section');

const observerOptions = {
    threshold: 0.15,
    rootMargin: "0px 0px -50px 0px"
};

const observer = new IntersectionObserver((entries, observer) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('visible');
            observer.unobserve(entry.target); // Only animate once
        }
    });
}, observerOptions);

sections.forEach(section => {
    observer.observe(section);
});

// Smooth scrolling for navigation links
document.querySelectorAll('nav a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});

function scrollToContact() {
    document.getElementById('contact').scrollIntoView({ behavior: 'smooth' });
}

async function handleContactSubmit(event) {
    event.preventDefault(); // Prevent page reload

    const name = document.getElementById('contactName').value;
    const email = document.getElementById('contactEmail').value;
    const message = document.getElementById('contactMessage').value;
    const submitBtn = event.target.querySelector('button[type="submit"]');

    if (name && email && message) {
        // Change button state to indicate loading
        const originalBtnText = submitBtn.textContent;
        submitBtn.textContent = 'Sending...';
        submitBtn.disabled = true;

        try {
            // IMPORTANT: Replace 'YOUR_VERCEL_PROJECT_URL' with your actual Vercel deployment URL
            // Example: 'https://your-project-name.vercel.app/api/send-email'
            const response = await fetch('YOUR_VERCEL_PROJECT_URL/api/send-email', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ name, email, message }),
            });

            const data = await response.json();

            if (response.ok) {
                alert(`Thank you, ${name}! Your message has been sent successfully.`);
                event.target.reset();
            } else {
                throw new Error(data.error || 'Failed to send message');
            }
        } catch (error) {
            console.error('Error:', error);
            alert('Failed to send message. Please try again later or contact me directly via email.');
        } finally {
            // Restore button state
            submitBtn.textContent = originalBtnText;
            submitBtn.disabled = false;
        }
    } else {
        alert("Please fill in all fields.");
    }
}

