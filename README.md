**Election Result Analysis DB Work**

This project is designed to manage and analyze voting data for political parties across various regions. It allows efficient tracking of votes at the district, thoguthi, and ward levels, and maintains real-time vote counts for each party.

**Database Structure**
The system consists of the following tables:

**Party**

Stores information about political parties and their leaders.

**Columns:**  party_id: Unique identifier for the party

              party_name: Name of the party (Unique)

              leader_name: Name of the party leader

**Region**

Manages geographical data for districts, thoguthis, and wards.

**Columns:**
              region_id: Unique identifier for the region

              district: Name of the district

              thoguthi: Name of the thoguthi

              ward: Name of the ward

**Vote**

Stores individual vote details along with the timestamp of the vote.

**Columns:**

              vote_id: Unique identifier for each vote

              party_id: Reference to the associated party

              region_id: Reference to the associated region

              vote_time: Timestamp of when the vote was cast

**Result**

Maintains the vote count for each party at different levels (district, thoguthi, ward).

**Columns:**

              result_id: Unique identifier for each result entry

              party_id: Reference to the associated party

              region_id: Reference to the associated region

              vote_count: Total number of votes counted for the party in that region

**Features**

            1) Real-time tracking of votes with timestamp information.

            2) Aggregated results for each party across all regions.

            3) Easy integration with triggers for automatic update of results.
