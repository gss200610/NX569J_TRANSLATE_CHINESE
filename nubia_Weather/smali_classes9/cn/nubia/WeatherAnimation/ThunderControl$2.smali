.class Lcn/nubia/WeatherAnimation/ThunderControl$2;
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
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$2;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl$2;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$2(Lcn/nubia/WeatherAnimation/ThunderControl;Z)V

    .line 149
    return-void
.end method
