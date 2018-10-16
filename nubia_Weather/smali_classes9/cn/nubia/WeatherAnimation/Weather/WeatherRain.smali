.class public Lcn/nubia/WeatherAnimation/Weather/WeatherRain;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherRain.java"


# static fields
.field private static synthetic $SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType:[I


# instance fields
.field mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

.field mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;


# direct methods
.method static synthetic $SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType()[I
    .locals 3

    .prologue
    .line 7
    sget-object v0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->$SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/nubia/WeatherAnimation/WeatherType;->values()[Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_BLIZZARD:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2b

    :goto_1
    :try_start_1
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_CLOUDY:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2a

    :goto_2
    :try_start_2
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_DEFAULT:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_29

    :goto_3
    :try_start_3
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_DUST:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_28

    :goto_4
    :try_start_4
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_FOG:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_27

    :goto_5
    :try_start_5
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_HAIL:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_26

    :goto_6
    :try_start_6
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_HAZE:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_25

    :goto_7
    :try_start_7
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_HEAVY_RAIN:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_24

    :goto_8
    :try_start_8
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_HEAVY_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_23

    :goto_9
    :try_start_9
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_LIGHT_RAIN:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_22

    :goto_a
    :try_start_a
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_LIGHT_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_21

    :goto_b
    :try_start_b
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_MODERATE_RAIN:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_20

    :goto_c
    :try_start_c
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_MODERATE_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1f

    :goto_d
    :try_start_d
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_OVERCAST:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1e

    :goto_e
    :try_start_e
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_RAIN_HAIL:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1d

    :goto_f
    :try_start_f
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_RAIN_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1c

    :goto_10
    :try_start_10
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_SAND_STORM:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1b

    :goto_11
    :try_start_11
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_STORM:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1a

    :goto_12
    :try_start_12
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_SUNNY:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_19

    :goto_13
    :try_start_13
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_THUNDER_SHOWER:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_18

    :goto_14
    :try_start_14
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_THUNDER_SHOWER_HAIL:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_17

    :goto_15
    :try_start_15
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_MAX:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_16

    :goto_16
    :try_start_16
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_BLIZZARD:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_15

    :goto_17
    :try_start_17
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_CLOUDY:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_14

    :goto_18
    :try_start_18
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_DEFAULT:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_13

    :goto_19
    :try_start_19
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_DUST:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_12

    :goto_1a
    :try_start_1a
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_FOG:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_11

    :goto_1b
    :try_start_1b
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_HAIL:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_10

    :goto_1c
    :try_start_1c
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_HAZE:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_f

    :goto_1d
    :try_start_1d
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_HEAVY_RAIN:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_e

    :goto_1e
    :try_start_1e
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_HEAVY_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_d

    :goto_1f
    :try_start_1f
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_LIGHT_RAIN:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_c

    :goto_20
    :try_start_20
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_LIGHT_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_b

    :goto_21
    :try_start_21
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_MODERATE_RAIN:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_a

    :goto_22
    :try_start_22
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_MODERATE_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_9

    :goto_23
    :try_start_23
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_OVERCAST:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_8

    :goto_24
    :try_start_24
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_RAIN_HAIL:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_7

    :goto_25
    :try_start_25
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_RAIN_SNOW:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_6

    :goto_26
    :try_start_26
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_SAND_STORM:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_5

    :goto_27
    :try_start_27
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_STORM:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_4

    :goto_28
    :try_start_28
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_SUNNY:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_3

    :goto_29
    :try_start_29
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_2

    :goto_2a
    :try_start_2a
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NIGHT_THUNDER_SHOWER_HAIL:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_1

    :goto_2b
    :try_start_2b
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NULL:Lcn/nubia/WeatherAnimation/WeatherType;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_0

    :goto_2c
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->$SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_2c

    :catch_1
    move-exception v1

    goto :goto_2b

    :catch_2
    move-exception v1

    goto :goto_2a

    :catch_3
    move-exception v1

    goto :goto_29

    :catch_4
    move-exception v1

    goto :goto_28

    :catch_5
    move-exception v1

    goto :goto_27

    :catch_6
    move-exception v1

    goto :goto_26

    :catch_7
    move-exception v1

    goto :goto_25

    :catch_8
    move-exception v1

    goto :goto_24

    :catch_9
    move-exception v1

    goto :goto_23

    :catch_a
    move-exception v1

    goto :goto_22

    :catch_b
    move-exception v1

    goto/16 :goto_21

    :catch_c
    move-exception v1

    goto/16 :goto_20

    :catch_d
    move-exception v1

    goto/16 :goto_1f

    :catch_e
    move-exception v1

    goto/16 :goto_1e

    :catch_f
    move-exception v1

    goto/16 :goto_1d

    :catch_10
    move-exception v1

    goto/16 :goto_1c

    :catch_11
    move-exception v1

    goto/16 :goto_1b

    :catch_12
    move-exception v1

    goto/16 :goto_1a

    :catch_13
    move-exception v1

    goto/16 :goto_19

    :catch_14
    move-exception v1

    goto/16 :goto_18

    :catch_15
    move-exception v1

    goto/16 :goto_17

    :catch_16
    move-exception v1

    goto/16 :goto_16

    :catch_17
    move-exception v1

    goto/16 :goto_15

    :catch_18
    move-exception v1

    goto/16 :goto_14

    :catch_19
    move-exception v1

    goto/16 :goto_13

    :catch_1a
    move-exception v1

    goto/16 :goto_12

    :catch_1b
    move-exception v1

    goto/16 :goto_11

    :catch_1c
    move-exception v1

    goto/16 :goto_10

    :catch_1d
    move-exception v1

    goto/16 :goto_f

    :catch_1e
    move-exception v1

    goto/16 :goto_e

    :catch_1f
    move-exception v1

    goto/16 :goto_d

    :catch_20
    move-exception v1

    goto/16 :goto_c

    :catch_21
    move-exception v1

    goto/16 :goto_b

    :catch_22
    move-exception v1

    goto/16 :goto_a

    :catch_23
    move-exception v1

    goto/16 :goto_9

    :catch_24
    move-exception v1

    goto/16 :goto_8

    :catch_25
    move-exception v1

    goto/16 :goto_7

    :catch_26
    move-exception v1

    goto/16 :goto_6

    :catch_27
    move-exception v1

    goto/16 :goto_5

    :catch_28
    move-exception v1

    goto/16 :goto_4

    :catch_29
    move-exception v1

    goto/16 :goto_3

    :catch_2a
    move-exception v1

    goto/16 :goto_2

    :catch_2b
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>(IIFF)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 13
    new-instance v0, Lcn/nubia/Particle/ParticleSystemRain;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemRain;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

    .line 14
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 15
    new-instance v0, Lcn/nubia/Particle/ParticleSystemRain;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemRain;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;

    .line 16
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;

    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 17
    return-void
.end method


# virtual methods
.method public setType(Lcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 4
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 21
    invoke-super {p0, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setType(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 23
    invoke-static {}, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->$SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 53
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

    invoke-virtual {v0, v2}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    .line 54
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;

    invoke-virtual {v0, v3}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    .line 58
    :goto_0
    return-void

    .line 26
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

    invoke-virtual {v0, v2}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    .line 27
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;

    invoke-virtual {v0, v3}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    goto :goto_0

    .line 33
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    .line 34
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    goto :goto_0

    .line 40
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    .line 41
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    goto :goto_0

    .line 47
    :sswitch_3
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystem:Lcn/nubia/Particle/ParticleSystemRain;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    .line 48
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;->mParticleSystemBg:Lcn/nubia/Particle/ParticleSystemRain;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    goto :goto_0

    .line 23
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch
.end method
