.class public final Landroid/provider/ContactsContract$Accounts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final LETV_ACCOUNT_TYPE:Ljava/lang/String; = "com.letv"

.field public static final LOCAL_DEVICES_ACCOUNT:Landroid/accounts/Account;

.field private static final LOCAL_DEVICES_ACCOUNT_NAME:Ljava/lang/String; = "LocalDevice"

.field public static final LOCAL_DEVICES_ACCOUNT_TYPE:Ljava/lang/String; = "LocalDevice"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "LocalDevice"

    const-string v2, "LocalDevice"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/ContactsContract$Accounts;->LOCAL_DEVICES_ACCOUNT:Landroid/accounts/Account;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDeviceOnlyAccount([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 9
    .param p0, "accounts"    # [Landroid/accounts/Account;

    .prologue
    array-length v7, p0

    add-int/lit8 v7, v7, 0x1

    new-array v6, v7, [Landroid/accounts/Account;

    .local v6, "newAccount":[Landroid/accounts/Account;
    const/4 v7, 0x0

    sget-object v8, Landroid/provider/ContactsContract$Accounts;->LOCAL_DEVICES_ACCOUNT:Landroid/accounts/Account;

    aput-object v8, v6, v7

    const/4 v2, 0x1

    .local v2, "i":I
    move-object v1, p0

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .local v0, "account":Landroid/accounts/Account;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v0, v6, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v6
.end method

.method public static isLeTVAccount(Landroid/accounts/Account;)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.letv"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
