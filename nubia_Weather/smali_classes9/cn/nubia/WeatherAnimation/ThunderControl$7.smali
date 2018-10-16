.class Lcn/nubia/WeatherAnimation/ThunderControl$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ThunderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/WeatherAnimation/ThunderControl;->setValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/WeatherAnimation/ThunderControl;


# direct methods
.method constructor <init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    .line 220
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 14
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$0(Lcn/nubia/WeatherAnimation/ThunderControl;)Ljava/util/Random;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$10(Lcn/nubia/WeatherAnimation/ThunderControl;)[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 224
    .local v12, "index":I
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$10(Lcn/nubia/WeatherAnimation/ThunderControl;)[I

    move-result-object v0

    aget v1, v0, v12

    .line 226
    .local v1, "bitmapId":I
    const/4 v0, 0x2

    new-array v13, v0, [F

    .line 227
    .local v13, "locationTemp":[F
    const/4 v0, 0x3

    new-array v5, v0, [F

    .line 229
    .local v5, "alphaLocation":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$12(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v3

    const/4 v6, 0x0

    aget v3, v3, v6

    .line 230
    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$0(Lcn/nubia/WeatherAnimation/ThunderControl;)Ljava/util/Random;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v7}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$12(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v7

    const/4 v8, 0x2

    aget v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 229
    aput v3, v0, v2

    .line 231
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$12(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v3

    const/4 v6, 0x1

    aget v3, v3, v6

    .line 232
    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$0(Lcn/nubia/WeatherAnimation/ThunderControl;)Ljava/util/Random;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v7}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$12(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v7

    const/4 v8, 0x3

    aget v7, v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 231
    aput v3, v0, v2

    .line 234
    const/4 v0, 0x0

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$13(Lcn/nubia/WeatherAnimation/ThunderControl;)F

    move-result v3

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$14(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v6

    aget-object v6, v6, v12

    const/4 v7, 0x0

    aget v6, v6, v7

    mul-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 235
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$13(Lcn/nubia/WeatherAnimation/ThunderControl;)F

    move-result v3

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$15(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    mul-float/2addr v3, v6

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$16(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 234
    aput v2, v13, v0

    .line 236
    const/4 v0, 0x1

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$17(Lcn/nubia/WeatherAnimation/ThunderControl;)F

    move-result v3

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$14(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v6

    aget-object v6, v6, v12

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 237
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$17(Lcn/nubia/WeatherAnimation/ThunderControl;)F

    move-result v3

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$15(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v3, v6

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$16(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 236
    aput v2, v13, v0

    .line 239
    const/4 v0, 0x4

    new-array v4, v0, [F

    const/4 v0, 0x0

    .line 240
    const/4 v2, 0x0

    aget v2, v13, v2

    aput v2, v4, v0

    const/4 v0, 0x1

    .line 241
    const/4 v2, 0x1

    aget v2, v13, v2

    aput v2, v4, v0

    const/4 v0, 0x2

    .line 242
    const/4 v2, 0x0

    aget v2, v13, v2

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$14(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v3

    aget-object v3, v3, v12

    const/4 v6, 0x0

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v4, v0

    const/4 v0, 0x3

    .line 243
    const/4 v2, 0x1

    aget v2, v13, v2

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$14(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v3

    aget-object v3, v3, v12

    const/4 v6, 0x1

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v4, v0

    .line 246
    .local v4, "drawRectTemp":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$8(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addThunderEx(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    aput-object v0, v6, v7

    .line 247
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const v2, 0x3de147ae    # 0.11f

    invoke-virtual {v0, v2}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setDrawIndex(F)V

    .line 248
    sget v1, Lcn/nubia/weather/R$drawable;->weather_thunder_small_small:I

    .line 250
    const/4 v0, 0x4

    new-array v10, v0, [F

    const/4 v0, 0x0

    .line 251
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v10, v0

    const/4 v0, 0x1

    .line 252
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v10, v0

    const/4 v0, 0x2

    .line 253
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$16(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x0

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v10, v0

    const/4 v0, 0x3

    .line 254
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$16(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    const/4 v6, 0x1

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v10, v0

    .line 257
    .local v10, "drawRect":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$8(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v7, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addThunderEx(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v3

    aput-object v3, v0, v2

    .line 258
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$7;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const v2, 0x3df5c28f    # 0.12f

    invoke-virtual {v0, v2}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setDrawIndex(F)V

    .line 259
    return-void
.end method
