var Gallery = React.createClass({

  getInitialState(){
    return {
      pictures: []
    }
  },

  componentDidMount(){
    var component = this
    fetch("/api/images.json").then(function(response){
      response.json().then(function(json){
        console.log(json);
        component.setState({pictures: json.images})
      })
    })
  },

  render: function(){
    console.log(this.state.pictures);
    return (
      <div>
        {this.state.pictures.map(function(picture){
          return <img src={picture.image_url}/>
        })}
      </div>
   );
  }
});
