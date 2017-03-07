---
title: "Administration Tool Command-line Options (Distributed Replay Utility) | Microsoft Docs"
ms.custom: ""
ms.date: "2016-08-12"
ms.prod: "sql-server-2016"
ms.reviewer: ""
ms.suite: ""
ms.technology: 
  - "database-engine"
ms.tgt_pltfrm: ""
ms.topic: "article"
ms.assetid: c01b0ed3-67e4-4561-92d2-a8fbb086aca8
caps.latest.revision: 35
ms.author: "jhubbard"
manager: "jhubbard"
---
# Administration Tool Command-line Options (Distributed Replay Utility)
  The [!INCLUDE[msCoName](../../advanced-analytics/r-services/tutorials/includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../advanced-analytics/r-services/includes/ssnoversion-md.md)] Distributed Replay administration tool, **DReplay.exe**, is a command-line tool to communicate with the distributed replay controller. Use the administration tool to initiate, monitor, and cancel operations on the controller.  
  
 ![Topic link icon](../../database-engine/configure/windows/media/topic-link.gif "Topic link icon") For more information about the syntax conventions that are used with the administration tool syntax, see [Transact-SQL Syntax Conventions &#40;Transact-SQL&#41;](../Topic/Transact-SQL%20Syntax%20Conventions%20\(Transact-SQL\).md).  
  
## Syntax  
  
```  
  
dreplay {preprocess|replay|status|cancel} [options] [-?]}  
  
Usage:  
  
  dreplay preprocess [-m controller] -i input_trace_file  
    -d controller_working_dir [-c config_file] [-f status_interval]  
  
  dreplay replay [-m controller] -d controller_working_dir [-o]  
    [-s target_server] -w clients [-c config_file]  
    [-f status_interval]  
  
  dreplay status [-m controller] [-f status_interval]  
  
  dreplay cancel [-m controller] [-q]   
```  
  
## Remarks  
 You can issue the following command-line options with **DReplay.exe**:  
  
 **preprocess**  
 Initiates the preprocess stage. The controller prepares the input trace data, which you captured from the production environment, for replay against the target server.  
  
 **replay**  
 Initiates the event replay stage. The controller dispatches replay data to the specified clients, launches the distributed replay, and synchronizes the clients. Optionally, each client that was selected records the replay activity and saves result trace files locally.  
  
 **status**  
 Queries the controller and displays the current status.  
  
 **cancel**  
 Cancels the current operation that is running on the controller.  
  
 For detailed syntax information that includes the command arguments and examples, see the following topics:  
  
-   [Preprocess Option &#40;Distributed Replay Administration Tool&#41;](../../tools/distributed-replay/preprocess-option-distributed-replay-administration-tool.md)  
  
-   [Replay Option &#40;Distributed Replay Administration Tool&#41;](../../tools/distributed-replay/replay-option-distributed-replay-administration-tool.md)  
  
-   [Status Option &#40;Distributed Replay Administration Tool&#41;](../../tools/distributed-replay/status-option-distributed-replay-administration-tool.md)  
  
-   [Cancel Option &#40;Distributed Replay Administration Tool&#41;](../../tools/distributed-replay/cancel-option-distributed-replay-administration-tool.md)  
  
 RPCs are replayed as RPCs and not as language events.  
  
## Permissions  
 You must run the administration tool as an interactive user, as either a local user or a domain user account. To use a local user account, the administration tool and controller must be running on the same computer.  
  
 For more information, see [Distributed Replay Security](../../tools/distributed-replay/distributed-replay-security.md).  
  
## See also  
 [SQL Server Distributed Replay](../../tools/distributed-replay/sql-server-distributed-replay.md)  
  
  