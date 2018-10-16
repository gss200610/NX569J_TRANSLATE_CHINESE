.class public Lcn/nubia/WeatherAnimation/Weather/WeatherFactory;
.super Ljava/lang/Object;
.source "WeatherFactory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lcn/nubia/WeatherAnimation/Weather/WeatherFactory;->$SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType:[I

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
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/WeatherFactory;->$SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWeather(Lcn/nubia/WeatherAnimation/WeatherType;II)Lcn/nubia/WeatherAnimation/Weather/Weather;
    .locals 5
    .param p0, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 12
    int-to-float v3, p1

    const/high16 v4, 0x44870000    # 1080.0f

    div-float v2, v3, v4

    .line 13
    .local v2, "widthSCale":F
    int-to-float v3, p2

    const/high16 v4, 0x44f00000    # 1920.0f

    div-float v0, v3, v4

    .line 15
    .local v0, "heightScale":F
    invoke-static {}, Lcn/nubia/WeatherAnimation/Weather/WeatherFactory;->$SWITCH_TABLE$cn$nubia$WeatherAnimation$WeatherType()[I

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 151
    sget-object p0, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_DEFAULT:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 152
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDefault;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDefault;-><init>(IIFF)V

    .line 157
    .local v1, "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :goto_0
    invoke-virtual {v1, p0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setType(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 158
    return-object v1

    .line 18
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_0
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDefault;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDefault;-><init>(IIFF)V

    .line 19
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 23
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_1
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDaySunny;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDaySunny;-><init>(IIFF)V

    .line 24
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 28
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_2
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;-><init>(IIFF)V

    .line 29
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 33
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_3
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDayCloudy;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayCloudy;-><init>(IIFF)V

    .line 34
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 38
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_4
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightCloudy;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightCloudy;-><init>(IIFF)V

    .line 39
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 43
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_5
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDayOvercast;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayOvercast;-><init>(IIFF)V

    .line 44
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 48
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_6
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightOvercast;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightOvercast;-><init>(IIFF)V

    .line 49
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 53
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_7
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShower;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShower;-><init>(IIFF)V

    .line 54
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 58
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_8
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightThunderShower;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightThunderShower;-><init>(IIFF)V

    .line 59
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 63
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_9
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;-><init>(IIFF)V

    .line 64
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 68
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_a
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightThunderShowerHail;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightThunderShowerHail;-><init>(IIFF)V

    .line 69
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 74
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_b
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherRainSnow;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherRainSnow;-><init>(IIFF)V

    .line 75
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 80
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_c
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherHail;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherHail;-><init>(IIFF)V

    .line 81
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 86
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_d
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherRainHail;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherRainHail;-><init>(IIFF)V

    .line 87
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 98
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_e
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherRain;-><init>(IIFF)V

    .line 99
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 110
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_f
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherSnow;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherSnow;-><init>(IIFF)V

    .line 111
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 115
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_10
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDayFog;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayFog;-><init>(IIFF)V

    .line 116
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 120
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_11
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightFog;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightFog;-><init>(IIFF)V

    .line 121
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 126
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_12
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherHaze;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherHaze;-><init>(IIFF)V

    .line 127
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 131
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_13
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDayDust;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayDust;-><init>(IIFF)V

    .line 132
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto :goto_0

    .line 136
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_14
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightDust;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightDust;-><init>(IIFF)V

    .line 137
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto/16 :goto_0

    .line 141
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_15
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherDaySandStorm;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDaySandStorm;-><init>(IIFF)V

    .line 142
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto/16 :goto_0

    .line 146
    .end local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    :pswitch_16
    new-instance v1, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;

    invoke-direct {v1, p1, p2, v2, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;-><init>(IIFF)V

    .line 147
    .restart local v1    # "weather":Lcn/nubia/WeatherAnimation/Weather/Weather;
    goto/16 :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method
