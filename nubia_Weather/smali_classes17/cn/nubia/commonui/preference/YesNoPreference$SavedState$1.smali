.class final Lcn/nubia/commonui/preference/YesNoPreference$SavedState$1;
.super Ljava/lang/Object;
.source "YesNoPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/preference/YesNoPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/commonui/preference/YesNoPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/preference/YesNoPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 145
    new-instance v0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/YesNoPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/commonui/preference/YesNoPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/commonui/preference/YesNoPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 149
    new-array v0, p1, [Lcn/nubia/commonui/preference/YesNoPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/YesNoPreference$SavedState$1;->newArray(I)[Lcn/nubia/commonui/preference/YesNoPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
