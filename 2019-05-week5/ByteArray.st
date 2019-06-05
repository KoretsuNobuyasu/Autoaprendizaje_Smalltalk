| aByteArray |
aByteArray := ByteArray new: 256.
(0 to: 255) do: [:n | aByteArray at: n + 1 put: n].
aByteArray inspect