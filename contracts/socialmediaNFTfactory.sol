// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.20;

 import "./socialmediaNFT.sol";

 contract Factory{
    address [] public Posts;
    uint Postcount;

    event PostCreated(address _post);

    function createPost( string calldata _uri) internal returns(address){
       MediaNFT post = new MediaNFT(msg.sender, Postcount, _uri);

        Posts.push(address(post));

        Postcount +=1;

        emit PostCreated(address(post));

        return address(post);
    }
 }