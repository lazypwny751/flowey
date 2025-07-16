---
layout: default
title: "Character Gallery"
permalink: /characters/
---

# 🎭 Character Gallery

<div class="asgore-says">
  <p><em>"These are the souls of the Underground... Each one unique, each one determined."</em></p>
</div>

Meet the wonderful cast of characters available in Flowey! Each character brings their own personality and charm to your terminal messages.

## 🌻 Flowey the Flower

<div class="character-showcase">
  <div class="character-info">
    <h3>The Friendly Flower</h3>
    <p><strong>Personality:</strong> Cheerful, helpful... or is he? 😈</p>
    <p><strong>Best for:</strong> Welcoming messages, tutorials, or when you want that extra bit of... determination</p>
    <p><strong>Fun Fact:</strong> His smile is never just a smile</p>
  </div>
  <div class="character-example">
    <pre><code>flowey -c flowey "Howdy! I'm Flowey!"</code></pre>
  </div>
</div>

---

## 💀 Sans the Skeleton

<div class="character-showcase">
  <div class="character-info">
    <h3>The Laid-back Sentinel</h3>
    <p><strong>Personality:</strong> Relaxed, punny, surprisingly deep</p>
    <p><strong>Best for:</strong> Casual messages, jokes, debugging outputs</p>
    <p><strong>Fun Fact:</strong> Always speaks in lowercase (he's too lazy for caps)</p>
  </div>
  <div class="character-example">
    <pre><code>flowey -c sans "you're gonna have a bad time."</code></pre>
  </div>
</div>

---

## 🍝 Papyrus the Skeleton

<div class="character-showcase">
  <div class="character-info">
    <h3>The Great Papyrus</h3>
    <p><strong>Personality:</strong> ENTHUSIASTIC! CONFIDENT! BELIEVES IN YOU!</p>
    <p><strong>Best for:</strong> Motivational messages, success notifications, spaghetti recipes</p>
    <p><strong>Fun Fact:</strong> Everything he says is in CAPITAL LETTERS because he's just that excited</p>
  </div>
  <div class="character-example">
    <pre><code>flowey -c papyrus "NYEH HEH HEH! I, THE GREAT PAPYRUS, BELIEVE IN YOU!"</code></pre>
  </div>
</div>

---

## 🐐 Toriel the Caretaker

<div class="character-showcase">
  <div class="character-info">
    <h3>The Goat Mother</h3>
    <p><strong>Personality:</strong> Caring, protective, smells like cinnamon and butterscotch</p>
    <p><strong>Best for:</strong> Gentle reminders, warnings, nurturing messages</p>
    <p><strong>Fun Fact:</strong> She makes the best pie in the Underground</p>
  </div>
  <div class="character-example">
    <pre><code>flowey -c toriel "My child, stay safe out there."</code></pre>
  </div>
</div>

---

## 👑 Asgore the King

<div class="character-showcase">
  <div class="character-info">
    <h3>The King of Monsters</h3>
    <p><strong>Personality:</strong> Gentle giant, loves his flowers, carries heavy burdens</p>
    <p><strong>Best for:</strong> Formal announcements, important messages, contemplative moments</p>
    <p><strong>Fun Fact:</strong> Often prefers peaceful silence over words</p>
  </div>
  <div class="character-example">
    <pre><code>flowey -c asgore "The flowers are blooming nicely today."</code></pre>
  </div>
</div>

---

## 👤 Frisk the Human

<div class="character-showcase">
  <div class="character-info">
    <h3>The Determined Child</h3>
    <p><strong>Personality:</strong> Silent but determined, actions speak louder than words</p>
    <p><strong>Best for:</strong> Simple acknowledgments, milestone celebrations</p>
    <p><strong>Fun Fact:</strong> Their determination can literally save and reload reality</p>
  </div>
  <div class="character-example">
    <pre><code>flowey -c frisk "* You feel determined."</code></pre>
  </div>
</div>

---

## 🎨 Character Usage Tips

### Matching Character to Message

- **🌻 Flowey**: Tutorial messages, introductions, anything that needs a "friendly" touch
- **💀 Sans**: Error messages, casual notifications, debugging info
- **🍝 Papyrus**: Success messages, motivational quotes, celebration announcements  
- **🐐 Toriel**: Warning messages, helpful reminders, configuration prompts
- **👑 Asgore**: System status, important announcements, formal communications
- **👤 Frisk**: Progress indicators, completion messages, simple confirmations

### Context Examples

```bash
# System startup
flowey -c flowey "Howdy! System starting up!"

# Build success
flowey -c papyrus "NYEH! BUILD COMPLETED SUCCESSFULLY!"

# Warning message  
flowey -c toriel "My child, remember to backup your data."

# Error occurred
flowey -c sans "whoops. looks like something went wrong."

# Task completed
flowey -c frisk "* You completed the task with determination."

# Server status
flowey -c asgore "The server garden is flourishing."
```

## 🛠️ Creating Custom Characters

Want to add your own characters? Use the character generator:

```bash
flowey --generate
```

### Character Creation Process

1. **Prepare an Image**: Any format supported by `chafa`
2. **Run Generator**: Follow the interactive prompts
3. **Choose Output Name**: Will automatically add `.flowey` extension
4. **Set Author**: Optional credit field

### Character File Structure

Your custom characters follow this format:

```
Meta:
author = YourName

Context:
(Optional context or description)

Data:
(ASCII art with ANSI color codes)
```

---

<div class="determination-box">
  <h3>🌟 Which Character Are You?</h3>
  <p><strong>Take our personality quiz!</strong></p>
  <ul>
    <li>🌻 <strong>Friendly and helpful:</strong> You're like Flowey!</li>
    <li>💀 <strong>Laid-back and funny:</strong> You're like Sans!</li>
    <li>🍝 <strong>Enthusiastic and optimistic:</strong> You're like Papyrus!</li>
    <li>🐐 <strong>Caring and protective:</strong> You're like Toriel!</li>
    <li>👑 <strong>Thoughtful and responsible:</strong> You're like Asgore!</li>
    <li>👤 <strong>Determined and actions-oriented:</strong> You're like Frisk!</li>
  </ul>
</div>

<style>
.asgore-says {
  background: linear-gradient(135deg, #800080, #4b0082);
  color: #f4e4bc;
  padding: 1.5rem;
  margin: 2rem 0;
  border-radius: 10px;
  text-align: center;
  border: 3px solid #gold;
}

.character-showcase {
  display: flex;
  gap: 2rem;
  margin: 2rem 0;
  padding: 1.5rem;
  background: #f8f9fa;
  border-radius: 10px;
  border-left: 5px solid #007bff;
}

.character-info {
  flex: 2;
}

.character-example {
  flex: 1;
  background: #2d3748;
  color: #e2e8f0;
  padding: 1rem;
  border-radius: 5px;
  font-family: 'Courier New', monospace;
}

.character-example pre {
  margin: 0;
  white-space: pre-wrap;
}

.determination-box {
  background: linear-gradient(135deg, #ff6b6b, #feca57);
  color: white;
  padding: 2rem;
  border-radius: 10px;
  margin: 2rem 0;
  border: 3px solid white;
}

.determination-box h3 {
  margin-top: 0;
  color: white;
}

.determination-box ul {
  text-align: left;
  max-width: 600px;
  margin: 0 auto;
}

@media (max-width: 768px) {
  .character-showcase {
    flex-direction: column;
  }
}
</style>
