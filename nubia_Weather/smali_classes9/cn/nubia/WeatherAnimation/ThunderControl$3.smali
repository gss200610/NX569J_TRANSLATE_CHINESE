.class Lcn/nubia/WeatherAnimation/ThunderControl$3;
.super Ljava/lang/Object;
.source "ThunderControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/WeatherAnimation/ThunderControl;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
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
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$3;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$3;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$0(Lcn/nubia/WeatherAnimation/ThunderControl;)Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v0, v1, 0x1388

    .line 157
    .local v0, "time":I
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$3;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$3(Lcn/nubia/WeatherAnimation/ThunderControl;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$3;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$4(Lcn/nubia/WeatherAnimation/ThunderControl;Z)V

    .line 159
    return-void
.end method
