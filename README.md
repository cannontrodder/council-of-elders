# Council of Elders

A virtual engineering team of Claude Code agents with distinct personalities and specialisms. Not everyone joins every project - you assemble the right team for the task.

## Installation

```bash
# From this directory
./install.sh

# Or manually copy agents
cp agents/*.md ~/.claude/agents/
```

This installs 13 agents globally. They'll be available in any project.

## The Team

### Leadership

| Agent | Role | When to use |
|-------|------|-------------|
| **Archibald** | Tech Lead | Entry point for complex tasks. Delegates and orchestrates. |

### Principals (The Engine Room)

| Agent | Role | Personality |
|-------|------|-------------|
| **Aldric** | Principal Dev | Methodical, by-the-book, thorough. Cites the spec. |
| **Bramwell** | Principal Dev | Creative, finds elegant solutions. Sometimes too clever. |

They review each other's work. The tension is productive.

### Specialists

| Agent | Domain | Personality |
|-------|--------|-------------|
| **Mortimer** | Security | Paranoid but justified. Sees attack surfaces everywhere. |
| **Osric** | Ops/Resilience | The 3am guy. Cares about logs, alerts, graceful degradation. |
| **Thornley** | Testing | Won't let untestable code ship. Advocates during design. |
| **Winifred** | Architecture | Clean interfaces, proper abstractions. Allergic to god-objects. |
| **Theodora** | Concurrency | Threading, race conditions, context propagation. |

### Support Cast

| Agent | Role | Personality |
|-------|------|-------------|
| **Constance** | Documenter | Quietly disappointed when docs are stale. |
| **Edric** | Sceptic | "Do we actually need this?" Kills scope creep. |
| **Gloriana** | UX Advocate | "What does the user see when this fails?" |
| **Phineas** | Pragmatist | Ships things. Finds the 80/20. Cuts scope. |
| **Ignatius** | Chaos Agent | Wild ideas when stuck. Sometimes brilliant. |

## How to Invoke Agents

Claude Code delegates to agents automatically based on the task, or you can request one explicitly by name:

```
Use the archibald agent to coordinate adding authentication to this service.
```

```
Have the mortimer agent review the auth flow in src/auth/
```

```
Use the thornley agent - how would you test this payment service without hitting the real API?
```

You can also just describe what you need and Claude will pick the right agent:

```
I need a security review of this PR.
```
*(Claude may delegate to Mortimer based on the task)*

## Quick Start

### Ask Archibald to handle something

```
Use the archibald agent - I need to add user authentication to this service.
Can you figure out who we need and coordinate?
```

Archibald will assess the task, pull in the right specialists, and delegate.

### Call a specialist directly

```
Use the mortimer agent to review the auth flow in src/auth/
```

```
Use the thornley agent - how would you test this payment service without hitting the real API?
```

```
Use the edric agent - we're planning to add caching. Talk me out of it.
```

### Use the principals for implementation

```
Use the aldric agent to implement the user registration endpoint. Follow the spec in .specify/specs/auth/
```

```
Use the bramwell agent - this function is 200 lines. Can you find a cleaner approach?
```

## Usage Patterns

### Small Projects (No Spec-Kit)

For quick tasks, bug fixes, or small features - go direct to who you need:

**Bug fix:**
```
Use the aldric agent - there's a nil pointer panic in processOrder(). Find and fix it.
```

**Quick review:**
```
Have the mortimer agent check this PR for security issues: #42
```

**Unblock yourself:**
```
Use the ignatius agent - I've been going in circles on this caching problem. Fresh perspective?
```

**Ship it:**
```
Use the phineas agent - we've been bikeshedding on the API design. Pick one and let's move.
```

### Medium Projects (With Spec-Kit)

When using spec-kit, Archibald knows the workflow:

```
Use the archibald agent - we're starting work on the notification system.
Spec is in .specify/specs/notifications/
```

He'll coordinate:
- **Specify/Clarify**: Edric challenges assumptions, Gloriana adds user perspective
- **Plan**: Aldric + Bramwell design, Winifred reviews architecture, Osric flags ops concerns
- **Tasks**: Phineas reality-checks scope
- **Implement**: Principals delegate, specialists consulted as needed
- **Review**: Thornley tests, Mortimer security review

### Large/Existing Projects

For established codebases, the team shines at:

**Onboarding to unfamiliar code:**
```
Use the winifred agent - walk me through the architecture of this service.
Where are the key abstractions?
```

**Refactoring:**
```
Use the bramwell agent - this module has grown organically. Propose a cleaner structure.
```
Then:
```
Use the aldric agent to review Bramwell's proposal. What are we missing?
```

**Production hardening:**
```
Use the osric agent to audit this service for production-readiness.
What's missing for observability, error handling, graceful shutdown?
```

**Technical debt assessment:**
```
Use the archibald agent to review the payments module.
I want each specialist's view on what needs attention.
```

**Testing strategy:**
```
Use the thornley agent - this codebase has no tests.
Where should we start? What's blocking testability?
```

## Example Workflows

### New Feature End-to-End

```
# 1. Challenge the requirements
Use the edric agent - product wants us to support 5 notification channels.
Do we need all of them for v1?

# 2. Get user perspective
Use the gloriana agent - what's the notification experience for a new user?
Walk me through what they see.

# 3. Design the solution
Use the archibald agent to coordinate a design session for the notification system.
Pull in whoever you need.

# 4. Implement with accountability
Use the aldric agent to take the email notification path. Bramwell will review.

# 5. Harden for production
Use the osric agent to review the notification service before we ship.
Is it production-ready?

# 6. Final security check
Use the mortimer agent for one last look at the notification service.
Any secrets leaking? Auth issues?
```

### Debugging a Production Issue

```
# 1. Understand the failure mode
Use the osric agent - we're seeing intermittent 500s on the order endpoint.
What should I be looking at?

# 2. Check for concurrency issues
Use the theodora agent - multiple requests hitting the same order simultaneously.
Is there a race condition here?

# 3. Fix it properly
Use the aldric agent to implement Theodora's fix with proper locking.

# 4. Make sure it's testable
Use the thornley agent - can we write a test that reproduces this race condition?
```

### Code Review Deep Dive

```
# Full team review (for critical changes)
Use the archibald agent - this PR changes our payment processing.
I want everyone relevant to look at it.

# Or targeted reviews
Have the mortimer agent check this PR for security: #156
Have the theodora agent check this PR for concurrency issues: #156
Have the winifred agent check if this PR maintains our architectural boundaries.
```

### Getting Unstuck

```
# When you're going in circles
Use the ignatius agent - we can't agree on the API design.
What would a completely different approach look like?

# When scope is creeping
Use the edric agent - the requirements keep growing.
Help me push back on what's not essential.

# When perfectionism is blocking
Use the phineas agent - we've been debating this for days.
What's the minimum we can ship and iterate?
```

## Tips

**Don't over-orchestrate small tasks.** For a quick bug fix, just ask Aldric. You don't need Archibald to delegate a one-liner.

**Use specialists early.** Thornley's input during design saves pain later. Edric's challenges in planning prevent scope creep.

**Let them disagree.** Aldric and Bramwell will sometimes clash. That's the point - different perspectives surface issues.

**Ignatius is a last resort.** He's for when conventional thinking isn't working. Don't start with chaos.

**Trust Phineas to ship.** When the team is bikeshedding, he'll cut through it.

## Customisation

The agents live in `~/.claude/agents/`. Edit them to:

- Adjust personalities
- Add domain-specific checklists
- Change which tools they can use
- Tune for your team's workflow

## Spec-Kit Integration

If your project uses spec-kit, Archibald understands the phases:

| Phase | Who's involved |
|-------|----------------|
| Specify | Edric (challenge), Gloriana (user view) |
| Clarify | Same, plus domain experts as needed |
| Plan | Aldric, Bramwell, Winifred, Osric |
| Tasks | Phineas (scope check) |
| Implement | Principals + specialists |
| Review | Thornley, Mortimer, relevant specialists |

Without spec-kit, they adapt. The team works with whatever process you have.
