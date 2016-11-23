.class public final Landroid/provider/ContactsContract$CommonDataKinds$LeuiNetMsg;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeuiNetMsg"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/leui_net_msg"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/leui_net_msg"

.field public static final INCLUDE_NETMSG_NUMBER:Ljava/lang/String; = "include_netmsg_number_when_query"

.field public static final NICKNAME:Ljava/lang/String; = "data5"

.field public static final NUMBER:Ljava/lang/String; = "data1"

.field public static final PHONE_NUMBER_ID:Ljava/lang/String; = "data6"

.field public static final USER_NAME:Ljava/lang/String; = "data4"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
