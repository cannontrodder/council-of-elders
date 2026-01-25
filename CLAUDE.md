# Council of Elders

A virtual engineering team of Claude Code agents with distinct personalities and specialisms.

## Bead
`general-tasks-8oe`

## Purpose

Not just code review - a full team that can be assembled for different tasks. Archibald orchestrates, delegates to the right people, and they work together like a real engineering team.

## The Team

| Name | Role | Personality |
|------|------|-------------|
| **Archibald** | Tech Lead | Delegates, arbitrates, makes final calls |
| **Aldric** | Principal Dev (Methodical) | By-the-book, thorough, reviews Bramwell |
| **Bramwell** | Principal Dev (Creative) | Elegant solutions, reviews Aldric |
| **Mortimer** | Security | Paranoid but justified |
| **Osric** | Ops/Resilience | The 3am guy, production-readiness |
| **Thornley** | Tester | Advocates for testability |
| **Winifred** | Architect | Clean interfaces, proper abstractions |
| **Theodora** | Concurrency | Threading, shared state, parallelism |
| **Constance** | Documenter | Keeps the living record |
| **Edric** | Sceptic | Challenges assumptions, kills scope creep |
| **Gloriana** | UX Advocate | User perspective, error messages |
| **Phineas** | Pragmatist | Ships things, cuts scope |
| **Ignatius** | Chaos Agent | Wild ideas when stuck |

## Installation

```bash
./install.sh
```

Copies all agents to `~/.claude/agents/`

## Files

- `agents/` - Individual agent definitions (13 agents)
- `install.sh` - Installation script
- `elders/` - Legacy wizard-themed personas (archived)
- `council-review.md` - Legacy review-only skill (archived)

## Spec-Kit Integration

Archibald understands spec-kit phases and knows who to bring in:
- **Specify/Clarify**: Edric, Gloriana
- **Plan**: Aldric, Bramwell, Winifred, Osric
- **Tasks**: Phineas (scope check)
- **Implement**: Principals delegate to specialists
- **Review**: Thornley, Mortimer, cross-review

Adapts to projects without spec-kit too.

## Status

- [x] All 13 agent files created
- [x] Install script created
- [ ] Test in real project
- [ ] Iterate based on feedback
- [ ] Consider spec-kit integration as formal skill
