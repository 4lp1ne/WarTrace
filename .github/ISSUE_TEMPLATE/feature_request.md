name: ✨ Feature Request
description: Suggest an idea for WarTrace
title: "[Feature]: "
labels: [enhancement]
assignees: []

body:
  - type: markdown
    attributes:
      value: |
        ## ✊ Feature Request for WarTrace

        Thank you for helping build tools for truth, transparency, and accountability.  
        Please help us understand your suggestion in the context of war, media bias, or justice by filling out this form.

  - type: input
    id: problem
    attributes:
      label: ❓ What issue is your feature related to?
      description: Describe the emotional, technical, or societal problem this feature addresses.
      placeholder: I'm always frustrated when I see innocent people killed, media lying to protect elite interests, and violent massacres being manipulated for political gain. It's even worse knowing more and more people see the horror and still feel helpless because media and governments hide the truth.
    validations:
      required: true

  - type: textarea
    id: solution
    attributes:
      label: 💡 What solution do you propose?
      description: Describe the ideal feature or action to help address this issue.
      placeholder: It would be great if we could document, archive, and store the horrific things people post online—glorifying violence, mocking dead children, or expressing joy over suffering. These are crimes. We should also track and expose war crimes across all conflicts, not just the most mediatized ones.
    validations:
      required: true

  - type: textarea
    id: alternatives
    attributes:
      label: 🔁 Have you considered any alternatives?
      description: Share other ideas that might work or explain what should happen in an ideal world.
      placeholder: Ideally, politics, justice systems, and the media would do their job. That would save a lot of time. But since they don't, the least we can do is ensure one day criminals face their acts. Democracies should be built on honesty and truth.
    validations:
      required: false

  - type: textarea
    id: context
    attributes:
      label: 📎 Additional Context
      description: Include any other context, articles, screenshots, or links that support your feature request.
      placeholder: I could share articles and screenshots, but the horror of what I’ve archived — videos, comments, inhuman reactions — would get the project banned instantly if shared publicly. If you really want to face the truth, provide me a one-time email or secure drop point and I can send a sample pack of documented war glorification and hate speech. These are things that, if said by an Arab, would lead to imprisonment for terror apologia — yet are freely expressed and applauded. I’m not Arab nor defending any side only pro peace and anti crime/violence ( from any one)— just a human horrified by the silence of the so-called “axis of good.” 
    validations:
      required: false