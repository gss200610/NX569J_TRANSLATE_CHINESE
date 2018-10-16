.class public Lcn/nubia/weather/utils/WeatherIconUtils;
.super Ljava/lang/Object;
.source "WeatherIconUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getWeatherIcon(IZ)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "isNight"    # Z

    .prologue
    const v3, 0x7f02006e

    const v4, 0x7f02006d

    const v2, 0x7f02006c

    const v0, 0x7f020069

    const v1, 0x7f02007d

    .line 22
    if-eqz p1, :cond_0

    .line 23
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 180
    :goto_0
    :pswitch_1
    return v0

    .line 25
    :pswitch_2
    const v0, 0x7f0200af

    goto :goto_0

    .line 27
    :pswitch_3
    const v0, 0x7f02009f

    goto :goto_0

    .line 29
    :pswitch_4
    const v0, 0x7f020074

    goto :goto_0

    .line 31
    :pswitch_5
    const v0, 0x7f0200aa

    goto :goto_0

    .line 33
    :pswitch_6
    const v0, 0x7f0200b0

    goto :goto_0

    .line 35
    :pswitch_7
    const v0, 0x7f0200b1

    goto :goto_0

    .line 37
    :pswitch_8
    const v0, 0x7f0200ab

    goto :goto_0

    .line 39
    :pswitch_9
    const v0, 0x7f0200a5

    goto :goto_0

    .line 41
    :pswitch_a
    const v0, 0x7f0200a6

    goto :goto_0

    .line 43
    :pswitch_b
    const v0, 0x7f0200a8

    goto :goto_0

    .line 45
    :pswitch_c
    const v0, 0x7f0200a2

    goto :goto_0

    .line 47
    :pswitch_d
    const v0, 0x7f0200ae

    goto :goto_0

    .line 49
    :pswitch_e
    const v0, 0x7f0200a4

    goto :goto_0

    .line 51
    :pswitch_f
    const v0, 0x7f0200b2

    goto :goto_0

    .line 54
    :pswitch_10
    const v0, 0x7f0200ac

    goto :goto_0

    .line 56
    :pswitch_11
    const v0, 0x7f0200a7

    goto :goto_0

    .line 58
    :pswitch_12
    const v0, 0x7f0200a9

    goto :goto_0

    .line 60
    :pswitch_13
    const v0, 0x7f0200a3

    goto :goto_0

    .line 62
    :pswitch_14
    const v0, 0x7f0200ad

    goto :goto_0

    .line 68
    :pswitch_15
    const v0, 0x7f0200a0

    goto :goto_0

    .line 70
    :pswitch_16
    const v0, 0x7f0200a3

    goto :goto_0

    .line 72
    :pswitch_17
    const v0, 0x7f0200a8

    goto :goto_0

    .line 74
    :pswitch_18
    const v0, 0x7f0200a2

    goto :goto_0

    .line 76
    :pswitch_19
    const v0, 0x7f0200ae

    goto :goto_0

    .line 78
    :pswitch_1a
    const v0, 0x7f0200a4

    goto :goto_0

    .line 80
    :pswitch_1b
    const v0, 0x7f0200b2

    goto :goto_0

    .line 82
    :pswitch_1c
    const v0, 0x7f0200a9

    goto :goto_0

    .line 84
    :pswitch_1d
    const v0, 0x7f0200ad

    goto :goto_0

    .line 89
    :pswitch_1e
    const v0, 0x7f0200a1

    goto :goto_0

    .line 93
    :pswitch_1f
    const v0, 0x7f020075

    goto :goto_0

    .line 95
    :pswitch_20
    const v0, 0x7f020076

    goto :goto_0

    .line 97
    :pswitch_21
    const v0, 0x7f02007c

    goto :goto_0

    .line 104
    :cond_0
    packed-switch p0, :pswitch_data_1

    :pswitch_22
    move v0, v1

    .line 180
    goto/16 :goto_0

    :pswitch_23
    move v0, v1

    .line 106
    goto/16 :goto_0

    .line 108
    :pswitch_24
    const v0, 0x7f020068

    goto/16 :goto_0

    .line 110
    :pswitch_25
    const v0, 0x7f020074

    goto/16 :goto_0

    .line 112
    :pswitch_26
    const v0, 0x7f020077

    goto/16 :goto_0

    .line 114
    :pswitch_27
    const v0, 0x7f02007e

    goto/16 :goto_0

    .line 116
    :pswitch_28
    const v0, 0x7f02007f

    goto/16 :goto_0

    .line 118
    :pswitch_29
    const v0, 0x7f020078

    goto/16 :goto_0

    .line 120
    :pswitch_2a
    const v0, 0x7f02006f

    goto/16 :goto_0

    .line 122
    :pswitch_2b
    const v0, 0x7f020070

    goto/16 :goto_0

    .line 124
    :pswitch_2c
    const v0, 0x7f020072

    goto/16 :goto_0

    :pswitch_2d
    move v0, v2

    .line 126
    goto/16 :goto_0

    .line 128
    :pswitch_2e
    const v0, 0x7f02007b

    goto/16 :goto_0

    :pswitch_2f
    move v0, v3

    .line 130
    goto/16 :goto_0

    .line 132
    :pswitch_30
    const v0, 0x7f020080

    goto/16 :goto_0

    .line 135
    :pswitch_31
    const v0, 0x7f020079

    goto/16 :goto_0

    .line 137
    :pswitch_32
    const v0, 0x7f020071

    goto/16 :goto_0

    .line 139
    :pswitch_33
    const v0, 0x7f020073

    goto/16 :goto_0

    :pswitch_34
    move v0, v4

    .line 141
    goto/16 :goto_0

    .line 143
    :pswitch_35
    const v0, 0x7f02007a

    goto/16 :goto_0

    .line 149
    :pswitch_36
    const v0, 0x7f02006a

    goto/16 :goto_0

    :pswitch_37
    move v0, v4

    .line 151
    goto/16 :goto_0

    .line 153
    :pswitch_38
    const v0, 0x7f020072

    goto/16 :goto_0

    :pswitch_39
    move v0, v2

    .line 155
    goto/16 :goto_0

    .line 157
    :pswitch_3a
    const v0, 0x7f02007b

    goto/16 :goto_0

    :pswitch_3b
    move v0, v3

    .line 159
    goto/16 :goto_0

    .line 161
    :pswitch_3c
    const v0, 0x7f020080

    goto/16 :goto_0

    .line 163
    :pswitch_3d
    const v0, 0x7f020073

    goto/16 :goto_0

    .line 165
    :pswitch_3e
    const v0, 0x7f02007a

    goto/16 :goto_0

    .line 170
    :pswitch_3f
    const v0, 0x7f02006b

    goto/16 :goto_0

    .line 174
    :pswitch_40
    const v0, 0x7f020075

    goto/16 :goto_0

    .line 176
    :pswitch_41
    const v0, 0x7f020076

    goto/16 :goto_0

    .line 178
    :pswitch_42
    const v0, 0x7f02007c

    goto/16 :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_9
        :pswitch_20
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_16
        :pswitch_1d
        :pswitch_1
        :pswitch_1f
        :pswitch_21
        :pswitch_15
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
    .end packed-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2a
        :pswitch_41
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_37
        :pswitch_3e
        :pswitch_1
        :pswitch_40
        :pswitch_42
        :pswitch_36
        :pswitch_31
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_36
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method public static getWeatherPressIcon(IZ)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "isNight"    # Z

    .prologue
    const v3, 0x7f0201c3

    const v4, 0x7f0201c2

    const v2, 0x7f0201c1

    const v0, 0x7f0201be

    const v1, 0x7f0201d2

    .line 205
    if-eqz p1, :cond_0

    .line 206
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 363
    :goto_0
    :pswitch_1
    return v0

    .line 208
    :pswitch_2
    const v0, 0x7f0201e6

    goto :goto_0

    .line 210
    :pswitch_3
    const v0, 0x7f0201d6

    goto :goto_0

    .line 212
    :pswitch_4
    const v0, 0x7f0201c9

    goto :goto_0

    .line 214
    :pswitch_5
    const v0, 0x7f0201e1

    goto :goto_0

    .line 216
    :pswitch_6
    const v0, 0x7f0201e7

    goto :goto_0

    .line 218
    :pswitch_7
    const v0, 0x7f0201e8

    goto :goto_0

    .line 220
    :pswitch_8
    const v0, 0x7f0201e2

    goto :goto_0

    .line 222
    :pswitch_9
    const v0, 0x7f0201dc

    goto :goto_0

    .line 224
    :pswitch_a
    const v0, 0x7f0201dd

    goto :goto_0

    .line 226
    :pswitch_b
    const v0, 0x7f0201df

    goto :goto_0

    .line 228
    :pswitch_c
    const v0, 0x7f0201d9

    goto :goto_0

    .line 230
    :pswitch_d
    const v0, 0x7f0201e5

    goto :goto_0

    .line 232
    :pswitch_e
    const v0, 0x7f0201db

    goto :goto_0

    .line 234
    :pswitch_f
    const v0, 0x7f0201e9

    goto :goto_0

    .line 237
    :pswitch_10
    const v0, 0x7f0201e3

    goto :goto_0

    .line 239
    :pswitch_11
    const v0, 0x7f0201de

    goto :goto_0

    .line 241
    :pswitch_12
    const v0, 0x7f0201e0

    goto :goto_0

    .line 243
    :pswitch_13
    const v0, 0x7f0201da

    goto :goto_0

    .line 245
    :pswitch_14
    const v0, 0x7f0201e4

    goto :goto_0

    .line 251
    :pswitch_15
    const v0, 0x7f0201d7

    goto :goto_0

    .line 253
    :pswitch_16
    const v0, 0x7f0201da

    goto :goto_0

    .line 255
    :pswitch_17
    const v0, 0x7f0201df

    goto :goto_0

    .line 257
    :pswitch_18
    const v0, 0x7f0201d9

    goto :goto_0

    .line 259
    :pswitch_19
    const v0, 0x7f0201e5

    goto :goto_0

    .line 261
    :pswitch_1a
    const v0, 0x7f0201db

    goto :goto_0

    .line 263
    :pswitch_1b
    const v0, 0x7f0201e9

    goto :goto_0

    .line 265
    :pswitch_1c
    const v0, 0x7f0201e0

    goto :goto_0

    .line 267
    :pswitch_1d
    const v0, 0x7f0201e4

    goto :goto_0

    .line 272
    :pswitch_1e
    const v0, 0x7f0201d8

    goto :goto_0

    .line 276
    :pswitch_1f
    const v0, 0x7f0201ca

    goto :goto_0

    .line 278
    :pswitch_20
    const v0, 0x7f0201cb

    goto :goto_0

    .line 280
    :pswitch_21
    const v0, 0x7f0201d1

    goto :goto_0

    .line 287
    :cond_0
    packed-switch p0, :pswitch_data_1

    :pswitch_22
    move v0, v1

    .line 363
    goto/16 :goto_0

    :pswitch_23
    move v0, v1

    .line 289
    goto/16 :goto_0

    .line 291
    :pswitch_24
    const v0, 0x7f0201bd

    goto/16 :goto_0

    .line 293
    :pswitch_25
    const v0, 0x7f0201c9

    goto/16 :goto_0

    .line 295
    :pswitch_26
    const v0, 0x7f0201cc

    goto/16 :goto_0

    .line 297
    :pswitch_27
    const v0, 0x7f0201d3

    goto/16 :goto_0

    .line 299
    :pswitch_28
    const v0, 0x7f0201d4

    goto/16 :goto_0

    .line 301
    :pswitch_29
    const v0, 0x7f0201cd

    goto/16 :goto_0

    .line 303
    :pswitch_2a
    const v0, 0x7f0201c4

    goto/16 :goto_0

    .line 305
    :pswitch_2b
    const v0, 0x7f0201c5

    goto/16 :goto_0

    .line 307
    :pswitch_2c
    const v0, 0x7f0201c7

    goto/16 :goto_0

    :pswitch_2d
    move v0, v2

    .line 309
    goto/16 :goto_0

    .line 311
    :pswitch_2e
    const v0, 0x7f0201d0

    goto/16 :goto_0

    :pswitch_2f
    move v0, v3

    .line 313
    goto/16 :goto_0

    .line 315
    :pswitch_30
    const v0, 0x7f0201d5

    goto/16 :goto_0

    .line 318
    :pswitch_31
    const v0, 0x7f0201ce

    goto/16 :goto_0

    .line 320
    :pswitch_32
    const v0, 0x7f0201c6

    goto/16 :goto_0

    .line 322
    :pswitch_33
    const v0, 0x7f0201c8

    goto/16 :goto_0

    :pswitch_34
    move v0, v4

    .line 324
    goto/16 :goto_0

    .line 326
    :pswitch_35
    const v0, 0x7f0201cf

    goto/16 :goto_0

    .line 332
    :pswitch_36
    const v0, 0x7f0201bf

    goto/16 :goto_0

    :pswitch_37
    move v0, v4

    .line 334
    goto/16 :goto_0

    .line 336
    :pswitch_38
    const v0, 0x7f0201c7

    goto/16 :goto_0

    :pswitch_39
    move v0, v2

    .line 338
    goto/16 :goto_0

    .line 340
    :pswitch_3a
    const v0, 0x7f0201d0

    goto/16 :goto_0

    :pswitch_3b
    move v0, v3

    .line 342
    goto/16 :goto_0

    .line 344
    :pswitch_3c
    const v0, 0x7f0201d5

    goto/16 :goto_0

    .line 346
    :pswitch_3d
    const v0, 0x7f0201c8

    goto/16 :goto_0

    .line 348
    :pswitch_3e
    const v0, 0x7f0201cf

    goto/16 :goto_0

    .line 353
    :pswitch_3f
    const v0, 0x7f0201c0

    goto/16 :goto_0

    .line 357
    :pswitch_40
    const v0, 0x7f0201ca

    goto/16 :goto_0

    .line 359
    :pswitch_41
    const v0, 0x7f0201cb

    goto/16 :goto_0

    .line 361
    :pswitch_42
    const v0, 0x7f0201d1

    goto/16 :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_9
        :pswitch_20
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_16
        :pswitch_1d
        :pswitch_1
        :pswitch_1f
        :pswitch_21
        :pswitch_15
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
    .end packed-switch

    .line 287
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2a
        :pswitch_41
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_37
        :pswitch_3e
        :pswitch_1
        :pswitch_40
        :pswitch_42
        :pswitch_36
        :pswitch_31
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_36
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method public static isNight(J)Z
    .locals 8
    .param p0, "time"    # J

    .prologue
    const/4 v4, 0x0

    .line 185
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "timeStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 189
    .local v2, "timeHour":I
    const/16 v5, 0x12

    if-ge v2, v5, :cond_0

    const/4 v5, 0x6

    if-gt v2, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 195
    .end local v2    # "timeHour":I
    :cond_1
    :goto_0
    return v4

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
