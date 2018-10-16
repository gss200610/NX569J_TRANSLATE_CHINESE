.class public Lcn/nubia/WeatherAnimation/Weather/CloudUtil;
.super Ljava/lang/Object;
.source "CloudUtil.java"


# static fields
.field public static final DAY_CLOUD_ALPHA:[F

.field public static final DAY_CLOUD_LOCATION:[[F

.field public static final DAY_CLOUD_NAME:[I

.field public static final DAY_CLOUD_SPEED:[F

.field public static final DAY_FOG_ALPHA:[F

.field public static final DAY_FOG_LOCATION:[[F

.field public static final DAY_FOG_NAME:[I

.field public static final DAY_FOG_SPEED:[F

.field public static final DAY_HAZE_ALPHA:[F

.field public static final DAY_HAZE_LOCATION:[[F

.field public static final DAY_HAZE_NAME:[I

.field public static final DAY_HAZE_SPEED:[F

.field public static final DAY_OVERCAST_ALPHA:[F

.field public static final DAY_OVERCAST_LOCATION:[[F

.field public static final DAY_OVERCAST_NAME:[I

.field public static final DAY_OVERCAST_SPEED:[F

.field public static final DAY_SAND_STORM_ALPHA:[F

.field public static final DAY_SAND_STORM_LOCATION:[[F

.field public static final DAY_SAND_STORM_NAME:[I

.field public static final DAY_SAND_STORM_SPEED:[F

.field public static final DAY_SUNNY_ALPHA:[F

.field public static final DAY_SUNNY_NAME:[I

.field public static final DAY_SUNNY_SPEED:[F

.field public static final DAY_SUNY_LOCATION:[[F

.field public static final DAY_THUNDER_SHOWER_ALPHA:[F

.field public static final DAY_THUNDER_SHOWER_LOCATION:[[F

.field public static final DAY_THUNDER_SHOWER_NAME:[I

.field public static final DAY_THUNDER_SHOWER_SPEED:[F

.field public static final NIGHT_CLOUDY_ALPHA:[F

.field public static final NIGHT_CLOUDY_LOCATION:[[F

.field public static final NIGHT_CLOUDY_NAME:[I

.field public static final NIGHT_CLOUDY_SPEED:[F

.field public static final NIGHT_FOG_ALPHA:[F

.field public static final NIGHT_FOG_LOCATION:[[F

.field public static final NIGHT_FOG_NAME:[I

.field public static final NIGHT_FOG_SPEED:[F

.field public static final NIGHT_OVERCAST_ALPHA:[F

.field public static final NIGHT_OVERCAST_LOCATION:[[F

.field public static final NIGHT_OVERCAST_NAME:[I

.field public static final NIGHT_OVERCAST_SPEED:[F

.field public static final NIGHT_SAND_STORM_ALPHA:[F

.field public static final NIGHT_SAND_STORM_LOCATION:[[F

.field public static final NIGHT_SAND_STORM_NAME:[I

.field public static final NIGHT_SAND_STORM_SPEED:[F

.field public static final NIGHT_SUNNY_ALPHA:[F

.field public static final NIGHT_SUNNY_LOCATION:[[F

.field public static final NIGHT_SUNNY_NAME:[I

.field public static final NIGHT_SUNNY_SPEED:[F

.field public static final NIGHT_THUNDER_SHOWER_ALPHA:[F

.field public static final NIGHT_THUNDER_SHOWER_LOCATION:[[F

.field public static final NIGHT_THUNDER_SHOWER_NAME:[I

.field public static final NIGHT_THUNDER_SHOWER_SPEED:[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 8
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNNY_SPEED:[F

    .line 9
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNNY_ALPHA:[F

    .line 10
    new-array v0, v2, [[F

    .line 11
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    .line 12
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    .line 10
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNY_LOCATION:[[F

    .line 14
    new-array v0, v2, [I

    .line 15
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_front:I

    aput v1, v0, v4

    .line 16
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_sunny:I

    aput v1, v0, v5

    .line 14
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNNY_NAME:[I

    .line 20
    new-array v0, v5, [F

    const/high16 v1, 0x41700000    # 15.0f

    aput v1, v0, v4

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_SPEED:[F

    .line 21
    new-array v0, v5, [F

    const v1, 0x3e851eb8    # 0.26f

    aput v1, v0, v4

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_ALPHA:[F

    .line 22
    new-array v0, v5, [[F

    .line 23
    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    .line 22
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_LOCATION:[[F

    .line 25
    new-array v0, v5, [I

    .line 26
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_front:I

    aput v1, v0, v4

    .line 25
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_NAME:[I

    .line 30
    new-array v0, v6, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_CLOUD_SPEED:[F

    .line 31
    new-array v0, v6, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_CLOUD_ALPHA:[F

    .line 32
    new-array v0, v6, [[F

    .line 33
    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    .line 34
    new-array v1, v3, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    .line 35
    new-array v1, v3, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_CLOUD_LOCATION:[[F

    .line 37
    new-array v0, v6, [I

    .line 38
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_back:I

    aput v1, v0, v4

    .line 39
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_front:I

    aput v1, v0, v5

    .line 40
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_sunny:I

    aput v1, v0, v2

    .line 37
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_CLOUD_NAME:[I

    .line 44
    new-array v0, v2, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_CLOUDY_SPEED:[F

    .line 45
    new-array v0, v2, [F

    fill-array-data v0, :array_b

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_CLOUDY_ALPHA:[F

    .line 46
    new-array v0, v2, [[F

    .line 47
    new-array v1, v3, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    .line 48
    new-array v1, v3, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    .line 46
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_CLOUDY_LOCATION:[[F

    .line 50
    new-array v0, v2, [I

    .line 51
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_back:I

    aput v1, v0, v4

    .line 52
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_front:I

    aput v1, v0, v5

    .line 50
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_CLOUDY_NAME:[I

    .line 56
    new-array v0, v6, [F

    fill-array-data v0, :array_e

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_OVERCAST_SPEED:[F

    .line 57
    new-array v0, v6, [F

    fill-array-data v0, :array_f

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_OVERCAST_ALPHA:[F

    .line 58
    new-array v0, v6, [[F

    .line 59
    new-array v1, v3, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    .line 60
    new-array v1, v3, [F

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    .line 61
    new-array v1, v3, [F

    fill-array-data v1, :array_12

    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_OVERCAST_LOCATION:[[F

    .line 63
    new-array v0, v6, [I

    .line 64
    sget v1, Lcn/nubia/weather/R$drawable;->weather_overcast_back:I

    aput v1, v0, v4

    .line 65
    sget v1, Lcn/nubia/weather/R$drawable;->weather_overcast_middle:I

    aput v1, v0, v5

    .line 66
    sget v1, Lcn/nubia/weather/R$drawable;->weather_overcast_front:I

    aput v1, v0, v2

    .line 63
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_OVERCAST_NAME:[I

    .line 70
    new-array v0, v6, [F

    fill-array-data v0, :array_13

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_OVERCAST_SPEED:[F

    .line 71
    new-array v0, v6, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_OVERCAST_ALPHA:[F

    .line 72
    new-array v0, v6, [[F

    .line 73
    new-array v1, v3, [F

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    .line 74
    new-array v1, v3, [F

    fill-array-data v1, :array_16

    aput-object v1, v0, v5

    .line 75
    new-array v1, v3, [F

    fill-array-data v1, :array_17

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_OVERCAST_LOCATION:[[F

    .line 77
    new-array v0, v6, [I

    .line 78
    sget v1, Lcn/nubia/weather/R$drawable;->weather_overcast_back:I

    aput v1, v0, v4

    .line 79
    sget v1, Lcn/nubia/weather/R$drawable;->weather_overcast_middle:I

    aput v1, v0, v5

    .line 80
    sget v1, Lcn/nubia/weather/R$drawable;->weather_overcast_front:I

    aput v1, v0, v2

    .line 77
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_OVERCAST_NAME:[I

    .line 85
    new-array v0, v6, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_SPEED:[F

    .line 86
    new-array v0, v6, [F

    fill-array-data v0, :array_19

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_ALPHA:[F

    .line 87
    new-array v0, v6, [[F

    .line 88
    new-array v1, v3, [F

    fill-array-data v1, :array_1a

    aput-object v1, v0, v4

    .line 89
    new-array v1, v3, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v5

    .line 90
    new-array v1, v3, [F

    fill-array-data v1, :array_1c

    aput-object v1, v0, v2

    .line 87
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_LOCATION:[[F

    .line 92
    new-array v0, v6, [I

    .line 93
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_thunder_shower_back:I

    aput v1, v0, v4

    .line 94
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_thunder_shower_middle:I

    aput v1, v0, v5

    .line 95
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_thunder_shower_front:I

    aput v1, v0, v2

    .line 92
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_NAME:[I

    .line 100
    new-array v0, v6, [F

    fill-array-data v0, :array_1d

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_THUNDER_SHOWER_SPEED:[F

    .line 101
    new-array v0, v6, [F

    fill-array-data v0, :array_1e

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_THUNDER_SHOWER_ALPHA:[F

    .line 102
    new-array v0, v6, [[F

    .line 103
    new-array v1, v3, [F

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    .line 104
    new-array v1, v3, [F

    fill-array-data v1, :array_20

    aput-object v1, v0, v5

    .line 105
    new-array v1, v3, [F

    fill-array-data v1, :array_21

    aput-object v1, v0, v2

    .line 102
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_THUNDER_SHOWER_LOCATION:[[F

    .line 107
    new-array v0, v6, [I

    .line 108
    sget v1, Lcn/nubia/weather/R$drawable;->weather_night_thunder_shower_back:I

    aput v1, v0, v4

    .line 109
    sget v1, Lcn/nubia/weather/R$drawable;->weather_night_thunder_shower_middle:I

    aput v1, v0, v5

    .line 110
    sget v1, Lcn/nubia/weather/R$drawable;->weather_night_thunder_shower_front:I

    aput v1, v0, v2

    .line 107
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_THUNDER_SHOWER_NAME:[I

    .line 114
    new-array v0, v6, [F

    fill-array-data v0, :array_22

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_FOG_SPEED:[F

    .line 115
    new-array v0, v6, [F

    fill-array-data v0, :array_23

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_FOG_ALPHA:[F

    .line 116
    new-array v0, v6, [[F

    .line 117
    new-array v1, v3, [F

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    .line 118
    new-array v1, v3, [F

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    .line 119
    new-array v1, v3, [F

    fill-array-data v1, :array_26

    aput-object v1, v0, v2

    .line 116
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_FOG_LOCATION:[[F

    .line 121
    new-array v0, v6, [I

    .line 122
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_fog_back:I

    aput v1, v0, v4

    .line 123
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_fog_middle:I

    aput v1, v0, v5

    .line 124
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_fog_front:I

    aput v1, v0, v2

    .line 121
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_FOG_NAME:[I

    .line 128
    new-array v0, v2, [F

    fill-array-data v0, :array_27

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_FOG_SPEED:[F

    .line 129
    new-array v0, v2, [F

    fill-array-data v0, :array_28

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_FOG_ALPHA:[F

    .line 130
    new-array v0, v2, [[F

    .line 131
    new-array v1, v3, [F

    fill-array-data v1, :array_29

    aput-object v1, v0, v4

    .line 132
    new-array v1, v3, [F

    fill-array-data v1, :array_2a

    aput-object v1, v0, v5

    .line 130
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_FOG_LOCATION:[[F

    .line 134
    new-array v0, v2, [I

    .line 135
    sget v1, Lcn/nubia/weather/R$drawable;->weather_night_fog_back:I

    aput v1, v0, v4

    .line 136
    sget v1, Lcn/nubia/weather/R$drawable;->weather_night_fog_front:I

    aput v1, v0, v5

    .line 134
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_FOG_NAME:[I

    .line 141
    new-array v0, v2, [F

    fill-array-data v0, :array_2b

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_SPEED:[F

    .line 142
    new-array v0, v2, [F

    fill-array-data v0, :array_2c

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_ALPHA:[F

    .line 143
    new-array v0, v2, [[F

    .line 144
    new-array v1, v3, [F

    fill-array-data v1, :array_2d

    aput-object v1, v0, v4

    .line 145
    new-array v1, v3, [F

    fill-array-data v1, :array_2e

    aput-object v1, v0, v5

    .line 143
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_LOCATION:[[F

    .line 147
    new-array v0, v2, [I

    .line 148
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_haze_back:I

    aput v1, v0, v4

    .line 149
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_haze_front:I

    aput v1, v0, v5

    .line 147
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_NAME:[I

    .line 153
    new-array v0, v2, [F

    fill-array-data v0, :array_2f

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SAND_STORM_SPEED:[F

    .line 154
    new-array v0, v2, [F

    fill-array-data v0, :array_30

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SAND_STORM_ALPHA:[F

    .line 155
    new-array v0, v2, [[F

    .line 156
    new-array v1, v3, [F

    fill-array-data v1, :array_31

    aput-object v1, v0, v4

    .line 157
    new-array v1, v3, [F

    fill-array-data v1, :array_32

    aput-object v1, v0, v5

    .line 155
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SAND_STORM_LOCATION:[[F

    .line 159
    new-array v0, v2, [I

    .line 160
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_sand_storm_back:I

    aput v1, v0, v4

    .line 161
    sget v1, Lcn/nubia/weather/R$drawable;->weather_day_sand_storm_front:I

    aput v1, v0, v5

    .line 159
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SAND_STORM_NAME:[I

    .line 165
    new-array v0, v2, [F

    fill-array-data v0, :array_33

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_SPEED:[F

    .line 166
    new-array v0, v2, [F

    fill-array-data v0, :array_34

    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_ALPHA:[F

    .line 167
    new-array v0, v2, [[F

    .line 168
    new-array v1, v3, [F

    fill-array-data v1, :array_35

    aput-object v1, v0, v4

    .line 169
    new-array v1, v3, [F

    fill-array-data v1, :array_36

    aput-object v1, v0, v5

    .line 167
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_LOCATION:[[F

    .line 171
    new-array v0, v2, [I

    .line 172
    sget v1, Lcn/nubia/weather/R$drawable;->weather_night_sand_storm_back:I

    aput v1, v0, v4

    .line 173
    sget v1, Lcn/nubia/weather/R$drawable;->weather_night_sand_storm_front:I

    aput v1, v0, v5

    .line 171
    sput-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_NAME:[I

    .line 174
    return-void

    .line 8
    :array_0
    .array-data 4
        0x41700000    # 15.0f
        0x0
    .end array-data

    .line 9
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 11
    :array_2
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43958000    # 299.0f
    .end array-data

    .line 12
    :array_3
    .array-data 4
        0x0
        0x0
        0x438c0000    # 280.0f
        0x438c0000    # 280.0f
    .end array-data

    .line 23
    :array_4
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43958000    # 299.0f
    .end array-data

    .line 30
    :array_5
    .array-data 4
        0x40f00000    # 7.5f
        0x41700000    # 15.0f
        0x0
    .end array-data

    .line 31
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 33
    :array_7
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43820000    # 260.0f
    .end array-data

    .line 34
    :array_8
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43958000    # 299.0f
    .end array-data

    .line 35
    :array_9
    .array-data 4
        0x0
        0x0
        0x438c0000    # 280.0f
        0x438c0000    # 280.0f
    .end array-data

    .line 44
    :array_a
    .array-data 4
        0x40f00000    # 7.5f
        0x41700000    # 15.0f
    .end array-data

    .line 45
    :array_b
    .array-data 4
        0x3e19999a    # 0.15f
        0x3e19999a    # 0.15f
    .end array-data

    .line 47
    :array_c
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43820000    # 260.0f
    .end array-data

    .line 48
    :array_d
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43958000    # 299.0f
    .end array-data

    .line 56
    :array_e
    .array-data 4
        0x40f00000    # 7.5f
        0x41400000    # 12.0f
        0x41900000    # 18.0f
    .end array-data

    .line 57
    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 59
    :array_10
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x435c0000    # 220.0f
    .end array-data

    .line 60
    :array_11
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43818000    # 259.0f
    .end array-data

    .line 61
    :array_12
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x435c0000    # 220.0f
    .end array-data

    .line 70
    :array_13
    .array-data 4
        0x40f00000    # 7.5f
        0x41400000    # 12.0f
        0x41900000    # 18.0f
    .end array-data

    .line 71
    :array_14
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data

    .line 73
    :array_15
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x435c0000    # 220.0f
    .end array-data

    .line 74
    :array_16
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43818000    # 259.0f
    .end array-data

    .line 75
    :array_17
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x435c0000    # 220.0f
    .end array-data

    .line 85
    :array_18
    .array-data 4
        0x41100000    # 9.0f
        0x41900000    # 18.0f
        0x41d80000    # 27.0f
    .end array-data

    .line 86
    :array_19
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 88
    :array_1a
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43ee0000    # 476.0f
    .end array-data

    .line 89
    :array_1b
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43bd8000    # 379.0f
    .end array-data

    .line 90
    :array_1c
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43848000    # 265.0f
    .end array-data

    .line 100
    :array_1d
    .array-data 4
        0x41100000    # 9.0f
        0x41900000    # 18.0f
        0x41d80000    # 27.0f
    .end array-data

    .line 101
    :array_1e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 103
    :array_1f
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43d78000    # 431.0f
    .end array-data

    .line 104
    :array_20
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43c68000    # 397.0f
    .end array-data

    .line 105
    :array_21
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x438f8000    # 287.0f
    .end array-data

    .line 114
    :array_22
    .array-data 4
        0x41a80000    # 21.0f
        -0x3dd80000    # -42.0f
        0x0
    .end array-data

    .line 115
    :array_23
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 117
    :array_24
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x44208000    # 642.0f
    .end array-data

    .line 118
    :array_25
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x44700000    # 960.0f
    .end array-data

    .line 119
    :array_26
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x44660000    # 920.0f
    .end array-data

    .line 128
    :array_27
    .array-data 4
        0x41a80000    # 21.0f
        -0x3dd80000    # -42.0f
    .end array-data

    .line 129
    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 131
    :array_29
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x4409c000    # 551.0f
    .end array-data

    .line 132
    :array_2a
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43ff8000    # 511.0f
    .end array-data

    .line 141
    :array_2b
    .array-data 4
        0x41c00000    # 24.0f
        0x42280000    # 42.0f
    .end array-data

    .line 142
    :array_2c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 144
    :array_2d
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43fa0000    # 500.0f
    .end array-data

    .line 145
    :array_2e
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43fa0000    # 500.0f
    .end array-data

    .line 153
    :array_2f
    .array-data 4
        0x42340000    # 45.0f
        0x42a20000    # 81.0f
    .end array-data

    .line 154
    :array_30
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 156
    :array_31
    .array-data 4
        0x0
        0x43abc000    # 343.5f
        0x44070000    # 540.0f
        0x441a2000    # 616.5f
    .end array-data

    .line 157
    :array_32
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43e98000    # 467.0f
    .end array-data

    .line 165
    :array_33
    .array-data 4
        0x42340000    # 45.0f
        0x42a20000    # 81.0f
    .end array-data

    .line 166
    :array_34
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 168
    :array_35
    .array-data 4
        0x0
        0x42b60000    # 91.0f
        0x44070000    # 540.0f
        0x4415c000    # 599.0f
    .end array-data

    .line 169
    :array_36
    .array-data 4
        0x0
        0x0
        0x44070000    # 540.0f
        0x43eb0000    # 470.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
