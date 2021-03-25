defineObject {
    name = "skeleton_warrior_ws",
    baseObject = "base_monster",
    components = {
        {
            class = "Model",
            model = "assets/models/monsters/skeleton_warrior.fbx",
            storeSourceData = true,
        },
        {
            class = "Animation",
            animations = {
                idle = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_idle.fbx",
                moveForward = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_walk.fbx",
                turnLeft = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_turn_left.fbx",
                turnRight = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_turn_right.fbx",
                attack = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_attack.fbx",
                attackBackRow = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_attack_back.fbx",
                getHitFrontLeft = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_front_left.fbx",
                getHitFrontRight = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_front_right.fbx",
                getHitBack = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_back.fbx",
                getHitLeft = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_left.fbx",
                getHitRight = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_right.fbx",
                fall = "assets/animations/monsters/skeleton_warrior/skeleton_warrior_get_hit_front_left.fbx",
            },
            currentLevelOnly = true,
        },
        {
            class = "Monster",
            meshName = "skeleton_warrior_mesh",
            footstepSound = "skeleton_footstep",
            hitSound = "skeleton_hit",
            dieSound = "skeleton_die",
            hitEffect = "hit_dust",
            capsuleHeight = 0.7,
            capsuleRadius = 0.25,
            collisionRadius = 0.6,
            health = 120,
            protection = 5,
            immunities = { "poisoned", "sleep", "blinded" },
            resistances = { ["poison"] = "immune", ["shock"] = "weak" },
            traits = { "undead" },
            exp = 90,
            lootDrop = { 100, "legionary_spear", 100, "legionary_shield" },
        },
        {
            class = "MeleeBrain",
            name = "brain",
            sight = 4,
        },
        {
            class = "MonsterMove",
            name = "move",
            sound = "skeleton_walk",
            cooldown = 2,
        },
        {
            class = "MonsterTurn",
            name = "turn",
            sound = "skeleton_walk",
        },
        {
            class = "MonsterAttack",
            name = "basicAttack",
            attackPower = 9,
            accuracy = 10,
            cooldown = 3,
            sound = "skeleton_attack",
            onBeginAction = function(self)
                -- use backrow attack animation
                self:setAnimation(iff(self.go.monster:isInBackRow(), "attackBackRow", "attack"))
            end,
        },
    },
}            

defineObject {
    name = "skeleton_warrior_patrol_ws",
    baseObject = "base_monster_group",
    components = {
        {
            class = "MonsterGroup",
            monsterType = "skeleton_warrior_ws",
            count = 4,
        }
    },
}

defineObject {
    name = "skeleton_warrior_pair_ws",
    baseObject = "base_monster_group",
    components = {
        {
            class = "MonsterGroup",
            monsterType = "skeleton_warrior_ws",
            count = 2,
        }
    },
}
