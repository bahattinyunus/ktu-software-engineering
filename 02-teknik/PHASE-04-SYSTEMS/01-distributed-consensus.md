# 🔗 PHASE 04: Distributed Systems & Consensus
## Building Reliable Systems from Unreliable Components

### Module Overview
Distributed systems are hard. Autonomous systems are distributed. This module covers the mathematics and patterns.

### Fundamental Theorems

#### CAP Theorem (Brewer, 2000)
```
You can have at most 2 of 3:
- Consistency (all replicas have same data)
- Availability (system responds to requests)
- Partition tolerance (survives network split)

Modern systems choose CP or AP:
- CP: Traditional databases (PostgreSQL with replication)
- AP: Distributed caches (Redis cluster)

Autonomous decision: Which to choose for each subsystem?
```

#### FLP Impossibility Result
```
Fischer, Lynch, Paterson (1985):
"No consensus algorithm can be both safe and live 
in an asynchronous system with even one crash failure"

Practical implication:
- Real systems use timeouts (add synchrony assumption)
- Different consensus algorithms for different tradeoffs
- Autonomous fallback strategies needed
```

### Consensus Algorithms

#### Raft (Understandable, Production-Ready)
```
Leader-based approach:
1. Election phase (choose leader)
2. Log replication (leader sends commands to followers)
3. Commit phase (majority confirmation)

Autonomous behaviors:
- Automatic leader election on failure
- Log compaction to free memory
- Dynamic membership changes
```

#### Byzantine Fault Tolerant (PBFT)
```
Harder problem: tolerate malicious nodes
- Consensus with f faults requires 3f+1 nodes
- Heavy message overhead
- Use for: blockchain, financial systems, security-critical
```

### Replication Patterns

#### Primary-Backup
- Simple: all writes go to primary
- Recovery: promote backup on primary failure
- Issue: stale reads possible on backup

#### Multi-Master
- Complex: handle conflicts
- Trade-off: eventual consistency
- Autonomous conflict resolution strategies

### Autonomous Consensus Decision Making

```python
class ConsensusOrchestrator:
    """Auto-select consensus algorithm based on requirements"""
    
    def recommend_consensus(self, requirements):
        if requirements['byzantine_faults']:
            return "PBFT", high_complexity=True
        elif requirements['low_latency']:
            return "Paxos", complexity="medium"
        elif requirements['simplicity']:
            return "Raft", complexity="low"
        else:
            # Default for most cases
            return "Raft", complexity="low"
    
    async def handle_partition(self):
        # Autonomous recovery strategy
        if self.can_reach_majority():
            continue_serving()
        else:
            # Minority partition: sacrifice availability for consistency
            stop_serving(reason="cannot reach majority")
```

---
`DISTRIBUTED_SYSTEMS: CONSENSUS_MASTERY_V1`
