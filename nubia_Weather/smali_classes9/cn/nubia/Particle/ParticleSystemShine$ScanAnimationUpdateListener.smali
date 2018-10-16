.class Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;
.super Ljava/lang/Object;
.source "ParticleSystemShine.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/Particle/ParticleSystemShine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanAnimationUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/Particle/ParticleSystemShine;


# direct methods
.method private constructor <init>(Lcn/nubia/Particle/ParticleSystemShine;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/Particle/ParticleSystemShine;Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;-><init>(Lcn/nubia/Particle/ParticleSystemShine;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 241
    .local v0, "value":F
    iget-object v1, p0, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcn/nubia/Particle/ParticleSystemShine;->access$1(Lcn/nubia/Particle/ParticleSystemShine;F)V

    .line 242
    return-void
.end method
