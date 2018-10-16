.class final Lcn/nubia/upgrade/util/ReportUtils$3;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/util/ReportUtils;->selfReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authID:Ljava/lang/String;

.field final synthetic val$authKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$versinName:Ljava/lang/String;

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$authID:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$authKey:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$context:Landroid/content/Context;

    iput p5, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versionCode:I

    iput-object p6, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versinName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 138
    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$map:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/upgrade/constants/HttpConstants;->getReportURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$authID:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$authKey:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/upgrade/http/HttpUtils;->postReport(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 139
    .local v0, "success":Z
    sget-object v1, Lcn/nubia/upgrade/util/ReportUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sel upgrade success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$context:Landroid/content/Context;

    const-string v2, "version_code"

    iget v3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versionCode:I

    invoke-static {v1, v2, v3}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 142
    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$context:Landroid/content/Context;

    const-string v2, "from_version_name"

    iget-object v3, p0, Lcn/nubia/upgrade/util/ReportUtils$3;->val$versinName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/upgrade/util/PrefEditor;->writePublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
