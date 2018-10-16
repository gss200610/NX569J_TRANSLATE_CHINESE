.class Lcn/nubia/weather/app/WeatherApplication$1;
.super Ljava/lang/Object;
.source "WeatherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/app/WeatherApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/app/WeatherApplication;


# direct methods
.method constructor <init>(Lcn/nubia/weather/app/WeatherApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 83
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 86
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v3}, Lcn/nubia/weather/app/WeatherApplication;->access$000(Lcn/nubia/weather/app/WeatherApplication;)V

    .line 87
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v3}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/weather/umeng/UmengUtils;->initUmeng(Landroid/content/Context;)V

    .line 88
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v3}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/app/WeatherUncaughtExceptionHandler;

    .line 89
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v3}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/weather/model/ModelHelper;->initContext(Landroid/content/Context;)V

    .line 91
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v3}, Lcn/nubia/weather/app/WeatherApplication;->refreshUpdateAlarm()V

    .line 93
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 95
    .local v2, "getInt":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "persist.sys.cta.diable"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcn/nubia/weather/app/WeatherApplication;->access$102(Lcn/nubia/weather/app/WeatherApplication;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    iget-object v4, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v4}, Lcn/nubia/weather/app/WeatherApplication;->access$300(Lcn/nubia/weather/app/WeatherApplication;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/nubia_backup.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/app/WeatherApplication;->access$202(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    iget-object v4, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v4}, Lcn/nubia/weather/app/WeatherApplication;->access$300(Lcn/nubia/weather/app/WeatherApplication;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/nubia_backup_origin.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/app/WeatherApplication;->access$502(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    :goto_2
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v3}, Lcn/nubia/weather/app/WeatherApplication;->access$200(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v3}, Lcn/nubia/weather/app/WeatherApplication;->access$500(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    iget-object v4, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v4}, Lcn/nubia/weather/app/WeatherApplication;->access$500(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/app/WeatherApplication;->access$202(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 118
    :cond_0
    :goto_3
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 103
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Load font nubia_backup failed"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 110
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Load font nubia_backup_origin failed"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v3}, Lcn/nubia/weather/app/WeatherApplication;->access$500(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v3}, Lcn/nubia/weather/app/WeatherApplication;->access$200(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    iget-object v4, p0, Lcn/nubia/weather/app/WeatherApplication$1;->this$0:Lcn/nubia/weather/app/WeatherApplication;

    invoke-static {v4}, Lcn/nubia/weather/app/WeatherApplication;->access$200(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/app/WeatherApplication;->access$502(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
