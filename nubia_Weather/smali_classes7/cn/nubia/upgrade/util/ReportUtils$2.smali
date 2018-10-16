.class final Lcn/nubia/upgrade/util/ReportUtils$2;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/util/ReportUtils;->selfReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authId:Ljava/lang/String;

.field final synthetic val$authKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkName:Ljava/lang/String;

.field final synthetic val$preVersion:I

.field final synthetic val$preVersionName:Ljava/lang/String;

.field final synthetic val$versionCode:I

.field final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$authId:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$authKey:Ljava/lang/String;

    iput p4, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$preVersion:I

    iput p5, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$versionCode:I

    iput-object p6, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$pkName:Ljava/lang/String;

    iput-object p7, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$preVersionName:Ljava/lang/String;

    iput-object p8, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$versionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$authId:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$authKey:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$preVersion:I

    iget v4, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$versionCode:I

    iget-object v5, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$pkName:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$preVersionName:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/upgrade/util/ReportUtils$2;->val$versionName:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcn/nubia/upgrade/util/ReportUtils;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
