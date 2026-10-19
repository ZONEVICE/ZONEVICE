# Permission Grid

```json
{
  "model": "claude-haiku-5-5",
  "effortLevel": "low",
  "permissions": {
    "defaultMode": "default",
    "allow": [],
    "ask": [],
    "deny": [
      "Read",
      "Edit",
      "Write",
      "Bash",
      "Grep",
      "Glob",
      "Agent",
      "Artifact",
      "AskUserQuestion",
      "CronCreate",
      "CronDelete",
      "CronList",
      "EnterPlanMode",
      "EnterWorktree",
      "ExitPlanMode",
      "ExitWorktree",
      "ListMcpResourcesTool",
      "LSP",
      "Monitor",
      "NotebookEdit",
      "PowerShell",
      "PushNotification",
      "ReadMcpResourceTool",
      "RemoteTrigger",
      "ReportFindings",
      "ScheduleWakeup",
      "SendMessage",
      "SendUserFile",
      "ShareOnboardingGuide",
      "Skill",
      "TaskCreate",
      "TaskGet",
      "TaskList",
      "TaskOutput",
      "TaskStop",
      "TaskUpdate",
      "TodoWrite",
      "ToolSearch",
      "WaitForMcpServers",
      "WebFetch",
      "WebSearch",
      "Workflow"
    ]
  }
}
```

# Claude Code Tools Reference

| Tool                   | Description                                                                                      |
| ---------------------- | ------------------------------------------------------------------------------------------------ |
| `Agent`                | Spawns a subagent with its own context window to handle a task and return a single result.       |
| `Artifact`             | Publishes an HTML or Markdown file as a private, shareable page on claude.ai.                    |
| `AskUserQuestion`      | Asks multiple-choice questions to gather requirements or clarify ambiguity.                      |
| `Bash`                 | Runs shell commands in your environment.                                                         |
| `CronCreate`           | Schedules a recurring or one-time prompt within the current session.                             |
| `CronDelete`           | Cancels a scheduled task by ID.                                                                  |
| `CronList`             | Lists all scheduled tasks in the session.                                                        |
| `Edit`                 | Makes targeted edits to a file by replacing an exact string with another.                        |
| `EnterPlanMode`        | Switches to Plan Mode to design an approach before coding.                                       |
| `EnterWorktree`        | Creates an isolated git worktree and switches into it.                                           |
| `ExitPlanMode`         | Presents a plan for approval and leaves Plan Mode.                                               |
| `ExitWorktree`         | Leaves a worktree session and returns to the original directory.                                 |
| `Glob`                 | Finds files by name or path pattern (e.g. `src/**/*.ts`).                                        |
| `Grep`                 | Searches file contents for text or regex patterns (built on ripgrep).                            |
| `ListMcpResourcesTool` | Lists resources exposed by connected MCP servers.                                                |
| `LSP`                  | Provides code intelligence via language servers: go-to-definition, references, type errors.      |
| `Monitor`              | Runs a command or WebSocket watcher in the background and feeds each output line back to Claude. |
| `NotebookEdit`         | Modifies Jupyter notebook cells (replace, insert, delete).                                       |
| `PowerShell`           | Runs PowerShell commands natively.                                                               |
| `PushNotification`     | Sends a desktop (and phone, via Remote Control) notification when a task needs attention.        |
| `Read`                 | Reads file contents, including images, PDFs, and Jupyter notebooks.                              |
| `ReadMcpResourceTool`  | Reads a specific MCP resource by URI.                                                            |
| `RemoteTrigger`        | Creates, updates, runs, and lists Routines on claude.ai.                                         |
| `ReportFindings`       | Reports code review findings as a structured list (file, summary, failure scenario).             |
| `ScheduleWakeup`       | Lets Claude choose when the next iteration of an autonomous `/loop` runs.                        |
| `SendMessage`          | Sends a message to an agent team member or resumes a subagent.                                   |
| `SendUserFile`         | Delivers files from the session to your device (inline render or download card).                 |
| `ShareOnboardingGuide` | Uploads `ONBOARDING.md` and returns a link teammates can open in Claude Code.                    |
| `Skill`                | Executes a reusable skill within the main conversation.                                          |
| `TaskCreate`           | Creates a new task in the task list.                                                             |
| `TaskGet`              | Retrieves full details for a specific task.                                                      |
| `TaskList`             | Lists all tasks with their current status.                                                       |
| `TaskOutput`           | Retrieves output from a background task (deprecated in favor of `Read`).                         |
| `TaskStop`             | Stops a running background task or agent by ID.                                                  |
| `TaskUpdate`           | Updates task status, dependencies, or details, or deletes tasks.                                 |
| `TodoWrite`            | Manages the session checklist (disabled by default in favor of the Task tools).                  |
| `ToolSearch`           | Searches for and loads deferred tools when MCP tool search is enabled.                           |
| `WaitForMcpServers`    | Waits for MCP servers still connecting in the background.                                        |
| `WebFetch`             | Fetches a URL and extracts content using a prompt.                                               |
| `WebSearch`            | Runs a web search and returns result titles and URLs.                                            |
| `Workflow`             | Runs a dynamic workflow script that orchestrates many background subagents.                      |
| `Write`                | Creates a new file or overwrites an existing one with the full content provided.                 |
