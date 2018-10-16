.class Lcn/nubia/WeatherAnimation/ThunderControl$9;
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
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    .line 284
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$0(Lcn/nubia/WeatherAnimation/ThunderControl;)Ljava/util/Random;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$18(Lcn/nubia/WeatherAnimation/ThunderControl;)[I

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 288
    .local v6, "index":I
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$18(Lcn/nubia/WeatherAnimation/ThunderControl;)[I

    move-result-object v0

    aget v1, v0, v6

    .line 290
    .local v1, "bitmapId":I
    new-array v5, v9, [F

    .line 291
    .local v5, "alphaLocation":[F
    const/4 v0, 0x4

    new-array v4, v0, [F

    .line 292
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v0

    aget v0, v0, v3

    aput v0, v4, v3

    .line 293
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v0

    aget v0, v0, v7

    aput v0, v4, v7

    .line 294
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v0

    aget v0, v0, v3

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$19(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v2

    aget-object v2, v2, v6

    aget v2, v2, v3

    add-float/2addr v0, v2

    aput v0, v4, v8

    .line 295
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F

    move-result-object v0

    aget v0, v0, v7

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$19(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F

    move-result-object v2

    aget-object v2, v2, v6

    aget v2, v2, v7

    add-float/2addr v0, v2

    aput v0, v4, v9

    .line 298
    .local v4, "drawRect":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v7

    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$8(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addThunderEx(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    aput-object v0, v7, v8

    .line 299
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$9;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    aget-object v0, v0, v8

    const v2, 0x3e051eb8    # 0.13f

    invoke-virtual {v0, v2}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setDrawIndex(F)V

    .line 300
    return-void
.end method
