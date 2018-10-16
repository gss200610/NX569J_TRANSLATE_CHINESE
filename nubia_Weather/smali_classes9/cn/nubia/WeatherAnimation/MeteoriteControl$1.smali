.class Lcn/nubia/WeatherAnimation/MeteoriteControl$1;
.super Ljava/lang/Object;
.source "MeteoriteControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/WeatherAnimation/MeteoriteControl;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
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
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$1;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$1;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$0(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v0, v1, 0x1388

    .line 55
    .local v0, "time":I
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$1;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$1(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl$1;->this$0:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->access$2(Lcn/nubia/WeatherAnimation/MeteoriteControl;Z)V

    .line 57
    return-void
.end method
