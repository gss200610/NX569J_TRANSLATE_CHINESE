.class Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ParticleSystemShine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/Particle/ParticleSystemShine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/Particle/ParticleSystemShine;


# direct methods
.method private constructor <init>(Lcn/nubia/Particle/ParticleSystemShine;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/Particle/ParticleSystemShine;Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;-><init>(Lcn/nubia/Particle/ParticleSystemShine;)V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 210
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 211
    .local v0, "animationEx":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 213
    .local v1, "value1":F
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v3}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v3

    aget-object v3, v3, v7

    aget v3, v3, v7

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v3}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v3

    aget-object v3, v3, v7

    aget v3, v3, v8

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v3}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v3

    aget-object v3, v3, v8

    aget v3, v3, v7

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    iget-object v4, v4, Lcn/nubia/Particle/ParticleSystemShine;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v5}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v5

    aget-object v5, v5, v8

    aget v5, v5, v8

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v6}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v6

    aget-object v6, v6, v8

    aget v6, v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 219
    .local v2, "value2":F
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v7

    aput v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 220
    const-string v3, "ParticleSystemShine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onAnimationRepeat value1 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; value2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 216
    .end local v2    # "value2":F
    :cond_0
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v3}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v3

    aget-object v3, v3, v7

    aget v3, v3, v7

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    iget-object v4, v4, Lcn/nubia/Particle/ParticleSystemShine;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v5}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v5

    aget-object v5, v5, v7

    aget v5, v5, v8

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v6}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v6

    aget-object v6, v6, v7

    aget v6, v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .restart local v2    # "value2":F
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 228
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 229
    .local v0, "animationEx":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v3}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v3

    aget-object v3, v3, v7

    aget v3, v3, v7

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    iget-object v4, v4, Lcn/nubia/Particle/ParticleSystemShine;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v5}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v5

    aget-object v5, v5, v7

    aget v5, v5, v8

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v6}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v6

    aget-object v6, v6, v7

    aget v6, v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 230
    .local v1, "value1":F
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v3}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v3

    aget-object v3, v3, v8

    aget v3, v3, v7

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    iget-object v4, v4, Lcn/nubia/Particle/ParticleSystemShine;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v5}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v5

    aget-object v5, v5, v8

    aget v5, v5, v8

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-static {v6}, Lcn/nubia/Particle/ParticleSystemShine;->access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F

    move-result-object v6

    aget-object v6, v6, v8

    aget v6, v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 231
    .local v2, "value2":F
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v7

    aput v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 232
    return-void
.end method
