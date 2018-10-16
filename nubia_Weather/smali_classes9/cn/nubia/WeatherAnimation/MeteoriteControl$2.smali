.class Lcn/nubia/WeatherAnimation/MeteoriteControl$2;
.super Ljava/lang/Object;
.source "MeteoriteControl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/WeatherAnimation/MeteoriteControl;->setValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;


# direct methods
.method constructor <init>(Lcn/nubia/WeatherAnimation/MeteoriteControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 73
    .local v2, "value":F
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$3(Lcn/nubia/WeatherAnimation/MeteoriteControl;)F

    move-result v3

    mul-float v1, v2, v3

    .line 74
    .local v1, "scale":F
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$4(Lcn/nubia/WeatherAnimation/MeteoriteControl;)F

    move-result v3

    mul-float v0, v2, v3

    .line 76
    .local v0, "alpha":F
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$5(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$5(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setScale(F)V

    .line 78
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$5(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setAlpha(F)V

    .line 80
    :cond_0
    return-void
.end method
