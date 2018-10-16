.class Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;
.super Lcn/nubia/Particle/Particle;
.source "ParticleSystemShine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/Particle/ParticleSystemShine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParticleShine"
.end annotation


# instance fields
.field public mAlphaRatio1:F

.field public mAlphaRatio2:F

.field public mLength:F

.field public mScaleRatio:F

.field public mSize:F

.field public mSizeEnd:F

.field public mSpeed:F

.field public mTexCoorIdEx:F

.field public mTexCoorIdMax:I

.field public mTexCoorIdMin:I

.field final synthetic this$0:Lcn/nubia/Particle/ParticleSystemShine;


# direct methods
.method private constructor <init>(Lcn/nubia/Particle/ParticleSystemShine;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->this$0:Lcn/nubia/Particle/ParticleSystemShine;

    invoke-direct {p0}, Lcn/nubia/Particle/Particle;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/Particle/ParticleSystemShine;Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;-><init>(Lcn/nubia/Particle/ParticleSystemShine;)V

    return-void
.end method
