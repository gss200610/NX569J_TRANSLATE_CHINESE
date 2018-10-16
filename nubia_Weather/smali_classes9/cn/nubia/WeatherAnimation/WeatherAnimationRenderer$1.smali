.class Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;
.super Ljava/lang/Object;
.source "WeatherAnimationRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;


# direct methods
.method constructor <init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$7(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NULL:Lcn/nubia/WeatherAnimation/WeatherType;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$15(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 194
    const-string v0, "WeatherAnimationRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSurfaceCreated run switchWeather mWeatherTypeCurr = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$15(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$15(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->switchWeather(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 192
    :cond_0
    monitor-exit v1

    .line 198
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
