.class public final Landroid/provider/ContactsContract$DataUsageFeedback;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataUsageFeedback"
.end annotation


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final DELETE_USAGE_URI:Landroid/net/Uri;

.field public static final EUI_DATA_USAGE_STAT_URI:Landroid/net/Uri;

.field public static final FEEDBACK_URI:Landroid/net/Uri;

.field public static final LAST_TIME_USED:Ljava/lang/String; = "last_time_used"

.field public static final LAST_TIME_USED_FOR_CALLS:Ljava/lang/String; = "last_time_used_for_calls"

.field public static final LAST_TIME_USED_FOR_LONG_TEXT:Ljava/lang/String; = "last_time_used_for_long_text"

.field public static final LAST_TIME_USED_FOR_SHORT_TEXT:Ljava/lang/String; = "last_time_used_for_short_text"

.field public static final SIM_CONTACT_STATUS:Ljava/lang/String; = "sim_contact_status"

.field public static final SIM_CONTACT_STATUS_LOADING:I = 0x1

.field public static final SIM_CONTACT_STATUS_NORMAL:I = 0x0

.field public static final TIMES_USED:Ljava/lang/String; = "times_used"

.field public static final TIMES_USED_FOR_CALLS:Ljava/lang/String; = "times_used_for_calls"

.field public static final TIMES_USED_FOR_LONG_TEXT:Ljava/lang/String; = "times_used_for_long_text"

.field public static final TIMES_USED_FOR_SHORT_TEXT:Ljava/lang/String; = "times_used_for_short_text"

.field public static final USAGE_TYPE:Ljava/lang/String; = "type"

.field public static final USAGE_TYPE_CALL:Ljava/lang/String; = "call"

.field public static final USAGE_TYPE_INT:Ljava/lang/String; = "usage_type"

.field public static final USAGE_TYPE_INT_CALL:I = 0x0

.field public static final USAGE_TYPE_INT_LONG_TEXT:I = 0x1

.field public static final USAGE_TYPE_INT_SHORT_TEXT:I = 0x2

.field public static final USAGE_TYPE_LONG_TEXT:Ljava/lang/String; = "long_text"

.field public static final USAGE_TYPE_SHORT_TEXT:Ljava/lang/String; = "short_text"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "delete_usage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->DELETE_USAGE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "le_data_usage_stat"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->EUI_DATA_USAGE_STAT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
