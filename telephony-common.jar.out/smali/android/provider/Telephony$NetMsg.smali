.class public final Landroid/provider/Telephony$NetMsg;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$NetMsg$Part;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "addr"

.field public static final BLACKLIST:Ljava/lang/String; = "blacklist"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONVERSATION_ID:Ljava/lang/String; = "conv_id"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATE_SENT:Ljava/lang/String; = "date_sent"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DEVICE:Ljava/lang/String; = "dev"

.field public static final EXTEND_TYPE:Ljava/lang/String; = "extend_type"

.field public static final FROM_UID:Ljava/lang/String; = "from_uid"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final JASON:Ljava/lang/String; = "jason"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final MARK_NAME:Ljava/lang/String; = "mark_name"

.field public static final MASTER:Ljava/lang/String; = "master"

.field public static final MEMBER_COUNT:Ljava/lang/String; = "num"

.field public static final MESSAGE_BOX:Ljava/lang/String; = "msg_box"

.field public static final MESSAGE_BOX_ALL:I = 0x0

.field public static final MESSAGE_BOX_DRAFTS:I = 0x3

.field public static final MESSAGE_BOX_FAILED:I = 0x5

.field public static final MESSAGE_BOX_INBOX:I = 0x1

.field public static final MESSAGE_BOX_OUTBOX:I = 0x4

.field public static final MESSAGE_BOX_SENT:I = 0x2

.field public static final MESSAGE_ID:Ljava/lang/String; = "m_id"

.field public static final MSG_TYPE:Ljava/lang/String; = "m_type"

.field public static final MSG_VERSION:Ljava/lang/String; = "version"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final NOTICE:Ljava/lang/String; = "notice"

.field public static final NO_DISTURB:Ljava/lang/String; = "no_disturb"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final RECIPIENTS:Ljava/lang/String; = "recipients"

.field public static final RETRY:Ljava/lang/String; = "retry"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final SERVICE_JASON:Ljava/lang/String; = "s_jason"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_COMPLETE:I = 0x0

.field public static final STATUS_FAILED:I = 0x40

.field public static final STATUS_NONE:I = -0x1

.field public static final STATUS_PENDING:I = 0x20

.field public static final STATUS_READ:I = 0x8

.field public static final SWITCH:Ljava/lang/String; = "switch"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final THUMB:Ljava/lang/String; = "thumbnail"

.field public static final TOP_CHAT:Ljava/lang/String; = "top_chat"

.field public static final TO_UID:Ljava/lang/String; = "to_uid"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3739
    const-string v0, "content://netmsg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$NetMsg;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
