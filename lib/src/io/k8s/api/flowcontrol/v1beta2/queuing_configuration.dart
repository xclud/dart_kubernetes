// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../flowcontrol_v1beta2.dart';

/// QueuingConfiguration holds the configuration parameters for queuing.
class QueuingConfiguration {
  /// Default constructor.
  const QueuingConfiguration({
    this.handSize,
    this.queueLengthLimit,
    this.queues,
  });

  /// Creates a [QueuingConfiguration] from JSON data.
  factory QueuingConfiguration.fromJson(Map<String, dynamic> json) {
    final tempHandSizeJson = json['handSize'];
    final tempQueueLengthLimitJson = json['queueLengthLimit'];
    final tempQueuesJson = json['queues'];

    final int? tempHandSize = tempHandSizeJson;
    final int? tempQueueLengthLimit = tempQueueLengthLimitJson;
    final int? tempQueues = tempQueuesJson;

    return QueuingConfiguration(
      handSize: tempHandSize,
      queueLengthLimit: tempQueueLengthLimit,
      queues: tempQueues,
    );
  }

  /// `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
  final int? handSize;

  /// `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
  final int? queueLengthLimit;

  /// `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
  final int? queues;

  /// Converts a [QueuingConfiguration] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHandSize = handSize;
    final tempQueueLengthLimit = queueLengthLimit;
    final tempQueues = queues;

    if (tempHandSize != null) {
      jsonData['handSize'] = tempHandSize;
    }

    if (tempQueueLengthLimit != null) {
      jsonData['queueLengthLimit'] = tempQueueLengthLimit;
    }

    if (tempQueues != null) {
      jsonData['queues'] = tempQueues;
    }

    return jsonData;
  }
}
