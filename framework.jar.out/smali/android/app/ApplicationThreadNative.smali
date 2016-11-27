.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 58
    if-nez p0, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 63
    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 717
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 124
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 712
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 80
    :pswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 82
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 83
    .local v7, "finished":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 84
    .local v8, "userLeaving":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 85
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_3
    move-object/from16 v5, p0

    .line 86
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 87
    const/4 v5, 0x1

    goto :goto_0

    .line 82
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 83
    .restart local v7    # "finished":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 85
    .restart local v8    # "userLeaving":Z
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 92
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :pswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 94
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v120, 0x1

    .line 95
    .local v120, "show":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 96
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v120

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 97
    const/4 v5, 0x1

    goto :goto_0

    .line 94
    .end local v9    # "configChanges":I
    .end local v120    # "show":Z
    :cond_3
    const/16 v120, 0x0

    goto :goto_4

    .line 102
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 104
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v120, 0x1

    .line 105
    .restart local v120    # "show":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v120

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 106
    const/4 v5, 0x1

    goto :goto_0

    .line 104
    .end local v120    # "show":Z
    :cond_4
    const/16 v120, 0x0

    goto :goto_5

    .line 111
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 113
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v121, 0x1

    .line 115
    .local v121, "sleeping":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v117, 0x1

    .line 117
    .local v117, "screenOn":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v121

    move/from16 v2, v117

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;ZZ)V

    .line 118
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 113
    .end local v117    # "screenOn":Z
    .end local v121    # "sleeping":Z
    :cond_5
    const/16 v121, 0x0

    goto :goto_6

    .line 115
    .restart local v121    # "sleeping":Z
    :cond_6
    const/16 v117, 0x0

    goto :goto_7

    .line 123
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v121    # "sleeping":Z
    :pswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 125
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 126
    .local v13, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v14, 0x1

    .line 127
    .local v14, "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 129
    .local v15, "reasonFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .local v16, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v11, p0

    move-object v12, v6

    .line 131
    invoke-virtual/range {v11 .. v16}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZILandroid/os/Bundle;)V

    .line 132
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 126
    .end local v14    # "isForward":Z
    .end local v15    # "reasonFlags":I
    .end local v16    # "resumeArgs":Landroid/os/Bundle;
    :cond_7
    const/4 v14, 0x0

    goto :goto_8

    .line 137
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v13    # "procState":I
    :pswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 139
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 140
    .local v30, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 141
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 146
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 148
    .local v18, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 149
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 150
    .local v20, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ActivityInfo;

    .line 151
    .local v21, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/res/Configuration;

    .line 152
    .local v22, "curConfig":Landroid/content/res/Configuration;
    const/16 v23, 0x0

    .line 153
    .local v23, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 154
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v23, Landroid/content/res/Configuration;

    .line 156
    .restart local v23    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_8
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 157
    .local v24, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 158
    .local v25, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v26

    .line 160
    .local v26, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 161
    .restart local v13    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v28

    .line 162
    .local v28, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v29

    .line 163
    .local v29, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 164
    .restart local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 165
    .local v31, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v32, 0x1

    .line 166
    .local v32, "notResumed":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v14, 0x1

    .line 167
    .restart local v14    # "isForward":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v34, v5

    .local v34, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_b
    move-object/from16 v17, p0

    move-object/from16 v19, v6

    move/from16 v27, v13

    move/from16 v33, v14

    .line 169
    invoke-virtual/range {v17 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 172
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 165
    .end local v14    # "isForward":Z
    .end local v32    # "notResumed":Z
    .end local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_9
    const/16 v32, 0x0

    goto :goto_9

    .line 166
    .restart local v32    # "notResumed":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_a

    .line 167
    .restart local v14    # "isForward":Z
    :cond_b
    const/16 v34, 0x0

    goto :goto_b

    .line 177
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v13    # "procState":I
    .end local v14    # "isForward":Z
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v20    # "ident":I
    .end local v21    # "info":Landroid/content/pm/ActivityInfo;
    .end local v22    # "curConfig":Landroid/content/res/Configuration;
    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v25    # "referrer":Ljava/lang/String;
    .end local v26    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v28    # "state":Landroid/os/Bundle;
    .end local v29    # "persistentState":Landroid/os/PersistableBundle;
    .end local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "notResumed":Z
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 179
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 180
    .restart local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 181
    .restart local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 182
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v32, 0x1

    .line 183
    .restart local v32    # "notResumed":Z
    :goto_c
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/res/Configuration;

    .line 184
    .local v41, "config":Landroid/content/res/Configuration;
    const/16 v23, 0x0

    .line 185
    .restart local v23    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 186
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v23, Landroid/content/res/Configuration;

    .restart local v23    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_c
    move-object/from16 v35, p0

    move-object/from16 v36, v6

    move-object/from16 v37, v30

    move-object/from16 v38, v31

    move/from16 v39, v9

    move/from16 v40, v32

    move-object/from16 v42, v23

    .line 188
    invoke-virtual/range {v35 .. v42}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 189
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 182
    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v32    # "notResumed":Z
    .end local v41    # "config":Landroid/content/res/Configuration;
    :cond_d
    const/16 v32, 0x0

    goto :goto_c

    .line 194
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 196
    .restart local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 197
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 198
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 203
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 205
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v97, 0x1

    .line 206
    .local v97, "finishing":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 207
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 208
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 205
    .end local v9    # "configChanges":I
    .end local v97    # "finishing":Z
    :cond_e
    const/16 v97, 0x0

    goto :goto_d

    .line 213
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 215
    .restart local v18    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ActivityInfo;

    .line 216
    .restart local v21    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 217
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 218
    .local v46, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 219
    .local v47, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v48

    .line 220
    .local v48, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v49, 0x1

    .line 221
    .local v49, "sync":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 222
    .local v50, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .local v51, "processState":I
    move-object/from16 v42, p0

    move-object/from16 v43, v18

    move-object/from16 v44, v21

    move-object/from16 v45, v24

    .line 223
    invoke-virtual/range {v42 .. v51}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 225
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 220
    .end local v49    # "sync":Z
    .end local v50    # "sendingUser":I
    .end local v51    # "processState":I
    :cond_f
    const/16 v49, 0x0

    goto :goto_e

    .line 229
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v21    # "info":Landroid/content/pm/ActivityInfo;
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v46    # "resultCode":I
    .end local v47    # "resultData":Ljava/lang/String;
    .end local v48    # "resultExtras":Landroid/os/Bundle;
    :pswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 231
    .local v36, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ServiceInfo;

    .line 232
    .local v21, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 233
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 234
    .restart local v51    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 235
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 239
    .end local v21    # "info":Landroid/content/pm/ServiceInfo;
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v51    # "processState":I
    :pswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 241
    .restart local v36    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 242
    .restart local v18    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v114, 0x1

    .line 243
    .local v114, "rebind":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 244
    .restart local v51    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    move/from16 v3, v114

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 245
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 242
    .end local v51    # "processState":I
    .end local v114    # "rebind":Z
    :cond_10
    const/16 v114, 0x0

    goto :goto_f

    .line 249
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 251
    .restart local v36    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 252
    .restart local v18    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 253
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 258
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 260
    .restart local v36    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v37, 0x1

    .line 261
    .local v37, "taskRemoved":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 262
    .local v38, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 264
    .local v39, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 265
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Intent;

    .local v40, "args":Landroid/content/Intent;
    :goto_11
    move-object/from16 v35, p0

    .line 269
    invoke-virtual/range {v35 .. v40}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 270
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 260
    .end local v37    # "taskRemoved":Z
    .end local v38    # "startId":I
    .end local v39    # "fl":I
    .end local v40    # "args":Landroid/content/Intent;
    :cond_11
    const/16 v37, 0x0

    goto :goto_10

    .line 267
    .restart local v37    # "taskRemoved":Z
    .restart local v38    # "startId":I
    .restart local v39    # "fl":I
    :cond_12
    const/16 v40, 0x0

    .restart local v40    # "args":Landroid/content/Intent;
    goto :goto_11

    .line 275
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v37    # "taskRemoved":Z
    .end local v38    # "startId":I
    .end local v39    # "fl":I
    .end local v40    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 277
    .restart local v36    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 278
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 283
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 285
    .local v53, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    .line 287
    .local v21, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v55

    .line 289
    .local v55, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    new-instance v56, Landroid/content/ComponentName;

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 291
    .local v56, "testName":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v34, v5

    .line 293
    .restart local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v58

    .line 294
    .local v58, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 295
    .local v91, "binder":Landroid/os/IBinder;
    invoke-static/range {v91 .. v91}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v59

    .line 296
    .local v59, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 297
    invoke-static/range {v91 .. v91}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v60

    .line 299
    .local v60, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 300
    .local v61, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v62, 0x1

    .line 301
    .local v62, "openGlTrace":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v63, 0x1

    .line 302
    .local v63, "restrictedBackupMode":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v64, 0x1

    .line 303
    .local v64, "persistent":Z
    :goto_16
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/res/Configuration;

    .line 304
    .restart local v41    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 305
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v67

    .line 306
    .local v67, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v68

    .local v68, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v52, p0

    move-object/from16 v54, v21

    move-object/from16 v57, v34

    move-object/from16 v65, v41

    move-object/from16 v66, v24

    .line 307
    invoke-virtual/range {v52 .. v68}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 310
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 289
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v56    # "testName":Landroid/content/ComponentName;
    .end local v58    # "testArgs":Landroid/os/Bundle;
    .end local v59    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v60    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v61    # "testMode":I
    .end local v62    # "openGlTrace":Z
    .end local v63    # "restrictedBackupMode":Z
    .end local v64    # "persistent":Z
    .end local v67    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v68    # "coreSettings":Landroid/os/Bundle;
    .end local v91    # "binder":Landroid/os/IBinder;
    :cond_13
    const/16 v56, 0x0

    goto :goto_12

    .line 291
    .restart local v56    # "testName":Landroid/content/ComponentName;
    :cond_14
    const/16 v34, 0x0

    goto :goto_13

    .line 300
    .restart local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v58    # "testArgs":Landroid/os/Bundle;
    .restart local v59    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v60    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v61    # "testMode":I
    .restart local v91    # "binder":Landroid/os/IBinder;
    :cond_15
    const/16 v62, 0x0

    goto :goto_14

    .line 301
    .restart local v62    # "openGlTrace":Z
    :cond_16
    const/16 v63, 0x0

    goto :goto_15

    .line 302
    .restart local v63    # "restrictedBackupMode":Z
    :cond_17
    const/16 v64, 0x0

    goto :goto_16

    .line 315
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v53    # "packageName":Ljava/lang/String;
    .end local v55    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v56    # "testName":Landroid/content/ComponentName;
    .end local v58    # "testArgs":Landroid/os/Bundle;
    .end local v59    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v60    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v61    # "testMode":I
    .end local v62    # "openGlTrace":Z
    .end local v63    # "restrictedBackupMode":Z
    .end local v91    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 317
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 322
    :pswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 324
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 329
    :pswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/res/Configuration;

    .line 331
    .restart local v41    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 332
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 336
    .end local v41    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 338
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 342
    :pswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 344
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 348
    :pswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 350
    .local v113, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v109

    .line 351
    .local v109, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .line 352
    .local v95, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/net/Uri;

    .line 353
    .local v105, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move-object/from16 v2, v109

    move-object/from16 v3, v95

    move-object/from16 v4, v105

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 354
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 358
    .end local v95    # "exclList":Ljava/lang/String;
    .end local v105    # "pacFileUrl":Landroid/net/Uri;
    .end local v109    # "port":Ljava/lang/String;
    .end local v113    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 360
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 364
    :pswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 366
    .local v96, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v118

    .line 367
    .local v118, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 368
    .local v40, "args":[Ljava/lang/String;
    if-eqz v96, :cond_18

    .line 369
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    move-object/from16 v2, v40

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 371
    :try_start_0
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_18
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 379
    .end local v40    # "args":[Ljava/lang/String;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v118    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 381
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v118

    .line 382
    .restart local v118    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 383
    .restart local v40    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_19

    .line 384
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    move-object/from16 v2, v40

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 386
    :try_start_1
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 390
    :cond_19
    :goto_18
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 394
    .end local v40    # "args":[Ljava/lang/String;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v118    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v70

    .line 397
    .local v70, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 398
    .restart local v18    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 399
    .restart local v46    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 400
    .local v73, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v74

    .line 401
    .local v74, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v75, 0x1

    .line 402
    .local v75, "ordered":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v76, 0x1

    .line 403
    .local v76, "sticky":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 404
    .restart local v50    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .restart local v51    # "processState":I
    move-object/from16 v69, p0

    move-object/from16 v71, v18

    move/from16 v72, v46

    move/from16 v77, v50

    move/from16 v78, v51

    .line 405
    invoke-virtual/range {v69 .. v78}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 407
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 401
    .end local v50    # "sendingUser":I
    .end local v51    # "processState":I
    .end local v75    # "ordered":Z
    .end local v76    # "sticky":Z
    :cond_1a
    const/16 v75, 0x0

    goto :goto_19

    .line 402
    .restart local v75    # "ordered":Z
    :cond_1b
    const/16 v76, 0x0

    goto :goto_1a

    .line 412
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v46    # "resultCode":I
    .end local v70    # "receiver":Landroid/content/IIntentReceiver;
    .end local v73    # "dataStr":Ljava/lang/String;
    .end local v74    # "extras":Landroid/os/Bundle;
    .end local v75    # "ordered":Z
    :pswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 414
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 419
    :pswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 421
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v23, 0x0

    .line 422
    .restart local v23    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 423
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v23, Landroid/content/res/Configuration;

    .line 425
    .restart local v23    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 426
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 431
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    :pswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v122, 0x1

    .line 433
    .local v122, "start":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 434
    .local v111, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v34, v5

    .line 436
    .restart local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v122

    move-object/from16 v2, v34

    move/from16 v3, v111

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 437
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 432
    .end local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v111    # "profileType":I
    .end local v122    # "start":Z
    :cond_1d
    const/16 v122, 0x0

    goto :goto_1b

    .line 434
    .restart local v111    # "profileType":I
    .restart local v122    # "start":Z
    :cond_1e
    const/16 v34, 0x0

    goto :goto_1c

    .line 442
    .end local v111    # "profileType":I
    .end local v122    # "start":Z
    :pswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 444
    .local v99, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 445
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 450
    .end local v99    # "group":I
    :pswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 452
    .local v87, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 453
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 454
    .local v90, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v24

    move/from16 v3, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 455
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 460
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v90    # "backupMode":I
    :pswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 462
    .restart local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 463
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 464
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 469
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 471
    .local v92, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v106

    .line 472
    .local v106, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v92

    move-object/from16 v2, v106

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 473
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 478
    .end local v92    # "cmd":I
    .end local v106    # "packages":[Ljava/lang/String;
    :pswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 480
    .local v103, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 481
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 486
    .end local v103    # "msg":Ljava/lang/String;
    :pswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    const/16 v102, 0x1

    .line 488
    .local v102, "managed":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 489
    .local v107, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v96, v5

    .line 491
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v102

    move-object/from16 v2, v107

    move-object/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 492
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 487
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v107    # "path":Ljava/lang/String;
    :cond_1f
    const/16 v102, 0x0

    goto :goto_1d

    .line 489
    .restart local v102    # "managed":Z
    .restart local v107    # "path":Ljava/lang/String;
    :cond_20
    const/16 v96, 0x0

    goto :goto_1e

    .line 496
    .end local v102    # "managed":Z
    .end local v107    # "path":Ljava/lang/String;
    :pswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 498
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .line 499
    .local v85, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 500
    .local v110, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 501
    .restart local v40    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_21

    .line 502
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v110

    move-object/from16 v3, v40

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 504
    :try_start_2
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 508
    :cond_21
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 512
    .end local v40    # "args":[Ljava/lang/String;
    .end local v85    # "activity":Landroid/os/IBinder;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v110    # "prefix":Ljava/lang/String;
    :pswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v119

    .line 514
    .local v119, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v119

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 515
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 519
    .end local v119    # "settings":Landroid/os/Bundle;
    :pswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v108

    .line 521
    .local v108, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/res/CompatibilityInfo;

    .line 522
    .local v93, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 523
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 527
    .end local v93    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v108    # "pkg":Ljava/lang/String;
    :pswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v101

    .line 529
    .local v101, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 530
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 535
    .end local v101    # "level":I
    :pswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 537
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/Debug$MemoryInfo;

    .line 538
    .local v79, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v80, 0x1

    .line 539
    .local v80, "checkin":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v81, 0x1

    .line 540
    .local v81, "dumpInfo":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v82, 0x1

    .line 541
    .local v82, "dumpDalvik":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/16 v83, 0x1

    .line 542
    .local v83, "dumpSummaryOnly":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 543
    .restart local v40    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_22

    .line 545
    :try_start_3
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v78

    move-object/from16 v77, p0

    move-object/from16 v84, v40

    invoke-virtual/range {v77 .. v84}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    :try_start_4
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 555
    :cond_22
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 538
    .end local v40    # "args":[Ljava/lang/String;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    .end local v83    # "dumpSummaryOnly":Z
    :cond_23
    const/16 v80, 0x0

    goto :goto_20

    .line 539
    .restart local v80    # "checkin":Z
    :cond_24
    const/16 v81, 0x0

    goto :goto_21

    .line 540
    .restart local v81    # "dumpInfo":Z
    :cond_25
    const/16 v82, 0x0

    goto :goto_22

    .line 541
    .restart local v82    # "dumpDalvik":Z
    :cond_26
    const/16 v83, 0x0

    goto :goto_23

    .line 548
    .restart local v40    # "args":[Ljava/lang/String;
    .restart local v83    # "dumpSummaryOnly":Z
    :catchall_0
    move-exception v5

    .line 549
    :try_start_5
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 552
    :goto_25
    throw v5

    .line 561
    .end local v40    # "args":[Ljava/lang/String;
    .end local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    .end local v83    # "dumpSummaryOnly":Z
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 563
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 564
    .restart local v40    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_27

    .line 566
    :try_start_6
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 569
    :try_start_7
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 575
    :cond_27
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 568
    :catchall_1
    move-exception v5

    .line 569
    :try_start_8
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 572
    :goto_27
    throw v5

    .line 581
    .end local v40    # "args":[Ljava/lang/String;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v96

    .line 583
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 584
    .restart local v40    # "args":[Ljava/lang/String;
    if-eqz v96, :cond_28

    .line 586
    :try_start_9
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 589
    :try_start_a
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 595
    :cond_28
    :goto_28
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 588
    :catchall_2
    move-exception v5

    .line 589
    :try_start_b
    invoke-virtual/range {v96 .. v96}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 592
    :goto_29
    throw v5

    .line 601
    .end local v40    # "args":[Ljava/lang/String;
    .end local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v112

    .line 603
    .local v112, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 610
    .end local v112    # "provider":Landroid/os/IBinder;
    :pswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v86

    .line 612
    .local v86, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v115

    .line 613
    .local v115, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 614
    .local v116, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v115

    move/from16 v3, v116

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 621
    .end local v86    # "activityToken":Landroid/os/IBinder;
    .end local v115    # "requestToken":Landroid/os/IBinder;
    .end local v116    # "requestType":I
    :pswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 623
    .restart local v36    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_29

    const/16 v123, 0x1

    .line 624
    .local v123, "timeout":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v123

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 623
    .end local v123    # "timeout":Z
    :cond_29
    const/16 v123, 0x0

    goto :goto_2a

    .line 631
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 633
    .restart local v36    # "token":Landroid/os/IBinder;
    new-instance v104, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 634
    .local v104, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v104

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 641
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v104    # "options":Landroid/app/ActivityOptions;
    :pswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 643
    .local v28, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 650
    .end local v28    # "state":I
    :pswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/content/pm/ProviderInfo;

    .line 652
    .local v112, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 659
    .end local v112    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_32
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v100

    .line 661
    .local v100, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v100

    if-ne v0, v5, :cond_2a

    const/4 v5, 0x1

    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 661
    :cond_2a
    const/4 v5, 0x0

    goto :goto_2b

    .line 668
    .end local v100    # "is24Hour":B
    :pswitch_33
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 670
    .restart local v36    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 677
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_34
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 679
    .restart local v36    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_2b

    const/16 v94, 0x1

    .line 680
    .local v94, "enabled":Z
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 679
    .end local v94    # "enabled":Z
    :cond_2b
    const/16 v94, 0x0

    goto :goto_2c

    .line 687
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_35
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 689
    .restart local v36    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 696
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v98

    .line 698
    .local v98, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 703
    .end local v98    # "firstPacket":[B
    :pswitch_37
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v88, 0x1

    .line 705
    .local v88, "arg0":Z
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v89

    .line 706
    .local v89, "arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v88

    move-object/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->enableActivityThreadLog(ZLjava/lang/String;)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 704
    .end local v88    # "arg0":Z
    .end local v89    # "arg1":Ljava/lang/String;
    :cond_2c
    const/16 v88, 0x0

    goto :goto_2d

    .line 372
    .restart local v40    # "args":[Ljava/lang/String;
    .restart local v96    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v118    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_17

    .line 387
    :catch_1
    move-exception v5

    goto/16 :goto_18

    .line 505
    .end local v118    # "service":Landroid/os/IBinder;
    .restart local v85    # "activity":Landroid/os/IBinder;
    .restart local v110    # "prefix":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1f

    .line 550
    .end local v85    # "activity":Landroid/os/IBinder;
    .end local v110    # "prefix":Ljava/lang/String;
    .restart local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v80    # "checkin":Z
    .restart local v81    # "dumpInfo":Z
    .restart local v82    # "dumpDalvik":Z
    .restart local v83    # "dumpSummaryOnly":Z
    :catch_3
    move-exception v5

    goto/16 :goto_24

    :catch_4
    move-exception v11

    goto/16 :goto_25

    .line 570
    .end local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    .end local v83    # "dumpSummaryOnly":Z
    :catch_5
    move-exception v5

    goto/16 :goto_26

    :catch_6
    move-exception v11

    goto/16 :goto_27

    .line 590
    :catch_7
    move-exception v5

    goto/16 :goto_28

    :catch_8
    move-exception v11

    goto/16 :goto_29

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_2f
        :pswitch_13
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_16
        :pswitch_17
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_1a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method
